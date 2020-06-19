from django.shortcuts import render,redirect
from django.contrib.auth import login,logout,authenticate
from .forms import selfforms,selfchangeforms
from .models import MyauthCommuser,MyauthBookInfo,MyauthUserEvaluation
from myauth.itemcf import ItemBasedCF   #引入推荐算法文件
import random
# Create your views here.



#生成用户评分数据
def load():
    id =int(1)
    vis = list(range(700))
    for i in range(1,700):
        vis[i]=0

    for x in range(10):
        for y in range(100):
            book_id = random.randint(1,700)
            while vis[book_id]==1:
                book_id = random.randint(1,700)
            vis[book_id]=1
            d = MyauthUserEvaluation(user_id=id,book_id=book_id,score=round(random.uniform(5.0,10.0),1))
            d.save()
        id+=1
        print(id,'ok')
        for i in range(1,700):
            vis[i]=0



# 首页
def index(request):
    error = ''
    if request.method=='POST':
        # 获取用户选择的分类
        key=request.POST['info']
    else:
        # 默认显示动作分类
        key='外国文学'
    data = MyauthBookInfo.objects.filter(book_type__regex=key)
    hot_data = MyauthBookInfo.objects.filter(book_type__regex='外国文学')[0:6]
    return render(request, 'myauth/index.html', locals())


# 登录
def slogin(request):
    if request.method=='POST':
        user = authenticate(request,username=request.POST['username'],password = request.POST['password'])
        if user is None:
            return render(request,'myauth/login.html',{'错误':'用户名不存在或者密码错误'})
        else:
            login(request,user=user)
            return redirect('myauth:index')
    else:
        return render(request,'myauth/login.html')

# 登出
def slogout(request):
    logout(request)
    return redirect('myauth:index')


# 注册
def register(request):
    if request.method == 'POST':
        registerform = selfforms(request.POST)
        if registerform.is_valid():
            registerform.save()
            user = authenticate(request, username=registerform.cleaned_data['username'], password=registerform.cleaned_data['password1'])
            user.email=registerform.cleaned_data['email']
            # MyauthCommuser(user=user,nikname=registerform.cleaned_data['nikname'],birthday=registerform.cleaned_data['birthday']).save()
            login(request,user)
            return redirect('myauth:index')
    else:
        registerform = selfforms()

    contentform ={'registerform':registerform}
    return render(request,'myauth/register.html',contentform)



# 基于物品的协同过滤算法
def recommd2(request):
    # 判断是否登录
    if request.user.is_authenticated == False:
        return render(request, 'myauth/login.html')
    userMovieScore = MyauthUserEvaluation.objects.all()
    userMovieScoreDict = readData(userMovieScore)
    Item = ItemBasedCF(userMovieScoreDict)
    Item.ItemSimilarity()
    if MyauthUserEvaluation.objects.filter(user_id=request.user.id).count()== 0:
        return render(request, 'book/recommd2.html', {'data': []})
    # 输入用户的id就是向该用户推荐电影
    recommendDic = Item.Recommend(request.user.id)
    # 保存推荐的书籍id
    movie_list = []
    for i, score in recommendDic.items():
        movie_list.append(i)
    data = []
    Movie = MyauthBookInfo.objects.all()
    for x in movie_list:
        try:
            data.append(Movie[int(x) - 1])
        except:
            continue
    return render(request, 'book/recommd2.html', {'data':data})



# 从数据库中读取数据为用户电影评分字典
def readData(userMovieScore):
    data = {}
    for onedata in userMovieScore:
        # 每一行数据
        linedata = [onedata.user_id, onedata.book_id, onedata.score]
        # print(linedata)
        # 如果字典中没有某位用户，则直接使用用户ID来创建这位用户
        if not linedata[0] in data.keys():
            data[linedata[0]] = {linedata[1]: linedata[2]}
        # 否则直接添加以该用户ID为key字典中
        else:
            data[linedata[0]][linedata[1]] = linedata[2]
    return data


# 图书详情页
def details(request,id):
    # 判断是否登录
    if request.user.is_authenticated == False:
        return render(request, 'myauth/login.html')
    # 获取书籍id
    data = MyauthBookInfo.objects.filter(id=id)

    # 获取评分数据，并且存入数据库
    if request.method == 'POST':
        error = ''
        book_id = request.POST['book_id']
        score = float(request.POST['Score'])
        # 判断分数是否在0-10之间
        if score >= 0 and score <= 10 :
            # 查询此用户对此书的记录
            num = MyauthUserEvaluation.objects.filter(user_id=request.user.id,book_id=book_id).count()
            if num:
                # 如果存在，便刷新
                MyauthUserEvaluation.objects.filter(user_id=request.user.id,book_id=book_id).update(score=score)
            else:
                # 未存在，便保存
                MyauthUserEvaluation(user_id=request.user.id, book_id=book_id,score=score).save()
        else:
            error = '错误'
        return render(request, 'book/show_book.html', {'data': data, 'error': error})
    else:
        return render(request, 'book/show_book.html', {'data': data})


# 图书搜索页
def search(request):
    # 判断是否登录
    if request.user.is_authenticated == False:
        return render(request, 'myauth/login.html')
    if request.method == 'POST':
        book_search = request.POST['book_search']
        data = MyauthBookInfo.objects.filter(book_name__contains=book_search)
        if not data:
            data = ''
        return render(request,'book/search.html',locals())
