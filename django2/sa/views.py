from django.shortcuts import render

from .models import allgoods, alluser, allcart, alldeliver
from .forms import registForm, loginForm, addGoodsForm, updateGoodsForm, delGoodsForm, addCartForm, delCartForm, payForm, deliverForm
# Create your views here.
def regist(request):
    form = registForm(request.POST, request.FILES or None)
    if form.is_valid(): # 有填表單
        uid = request.POST.get('uid')
        kind = request.POST.get('kind')
        user_list = alluser.objects.filter(uid = uid, kind = kind)
        if len(user_list) != 0: # 該帳號已註冊過
            form = registForm() # 清空表單
            context = {
                'form': form,
                'alert1': True,
            }
            return render(request, 'regist.html', context)
        elif kind != "u" and kind != "a":
            form = registForm() # 清空表單
            context = {
                'form': form,
                'alert2': True,
            }
            return render(request, 'regist.html', context)
    # 註冊成功
        form.save()
        form = registForm() # 清空表單
        context = {
            'form': form,
            'doagain': False,
        }
        return render(request, 'regist.html', context)
    # 未輸入表單
    context = {
        'form': form
    }
    return render(request, 'regist.html', context)

def login(request):
    form = loginForm(request.POST or None)
    if form.is_valid():
        user = request.POST.get('uid')
        pw = request.POST.get("pw")
        kind = request.POST.get("kind")
        user_list = alluser.objects.filter(uid = user, kind = kind)
        if len(user_list) == 0: # 無帳號
            form = loginForm() # 清空表單
            context = {
                'form': form,
                'alert1': True,
            }
            return render(request, 'login.html', context)
        user_list = alluser.objects.filter(uid = user, pw = pw, kind = kind)
        if len(user_list) == 0: # 密碼錯誤
            form = loginForm() # 清空表單
            context = {
                'form': form,
                'alert2': True,
            }
            return render(request, 'login.html', context)
        # 登入成功
        request.session["user"] = user
        if kind == "u":
            context = {
                'form': form,
                'doagain1': False,
            }
        elif kind == "a":
            context = {
                'form': form,
                'doagain2': False,
            }
        form = loginForm()
        return render(request, 'login.html', context)
    context = {
        'form': form
    }
    return render(request, 'login.html', context)

def mainPage(request):
    form = addCartForm(request.POST or None)
    if form.is_valid():
        user = request.session.get("user")
        id = request.POST.get("id")
        quality = request.POST.get("quality")
        thisGoods = allgoods.objects.filter(id=id)
        if len(thisGoods) == 0:
            context = {
            'form': form,
            'alert2': True,
            }
            return render(request, 'mainpage.html', context)
        elif int(quality) > thisGoods[0].quality:
            context = {
            'form': form,
            'alert1': True,
            }
            return render(request, 'mainpage.html', context)
        else:
            name = thisGoods[0].name
            price = thisGoods[0].price*int(quality)
            mycart = allcart(name = name, price=price, quality=quality, uid=user, gid=id, paid="否")
            mycart.save()
            form = addCartForm()
            context = {
                'form': form,
                'doagain': False,
            }
            return render(request, 'mainpage.html', context)
    user = request.session.get('user')
    mycart = allcart.objects.filter(uid=user)
    all_goods = allgoods.objects.all()
    context = {
        'form':form,
        'mycart':mycart,
        'all_goods':all_goods,
    }
    return render(request, 'mainpage.html',context)

def addGoods(request):
    form = addGoodsForm(request.POST or None)
    if form.is_valid():
        user = request.session.get("user")
        name = request.POST.get('name')
        price = request.POST.get("price")
        quality = request.POST.get("quality")
        allgoods1 = allgoods(name = name, price=price, quality=quality, uid=user)
        allgoods1.save()
        form = addGoodsForm()
        context = {
            'form': form,
            'doagain': False,
        }
        return render(request, 'addGoods.html', context)
    context = {
        'form': form
    }
    return render(request, 'addGoods.html', context)

def listMyGoods(request):
    user = request.session.get("user")
    mygoods = allgoods.objects.filter(uid=user)
    context = {
        'mygoods':mygoods,
    }
    return render(request, 'listMyGoods.html',context)

def updateGoods(request):
    form = updateGoodsForm(request.POST or None)
    if form.is_valid():
        user = request.session.get("user")
        id = request.POST.get('id')
        mygoods = allgoods.objects.filter(id=id,uid=user)
        if len(mygoods) == 0:
            context = {
            'alert1':False,
            }
            return render(request, 'updateGoods.html',context)
        else:
            name = request.POST.get("name")
            price = request.POST.get("price")
            quality = request.POST.get("quality")
            allgoods.objects.filter(id=id,uid=user).update(name=name,price=price,quality=quality)
            context = {
                'doagain':False,
            }
            return render(request, 'updateGoods.html',context)
    user = request.session.get("user")
    mygoods = allgoods.objects.filter(uid=user)
    context = {
        'mygoods':mygoods,
        'form': form
    }
    return render(request, 'updateGoods.html', context)

def delGoods(request):
    form = delGoodsForm(request.POST or None)
    if form.is_valid():
        user = request.session.get("user")
        id = request.POST.get('id')
        mygoods = allgoods.objects.filter(id=id,uid=user)
        if len(mygoods) == 0:
            context = {
            'alert1':False,
            }
            return render(request, 'delGoods.html',context)
        else:
            allgoods.objects.filter(id=id,uid=user).delete()
            context = {
                'doagain':False,
            }
            return render(request, 'delGoods.html',context)
    user = request.session.get("user")
    mygoods = allgoods.objects.filter(uid=user)
    context = {
        'mygoods':mygoods,
        'form': form
    }
    return render(request, 'delGoods.html', context)

def delCart(request):
    form = delCartForm(request.POST or None)
    if form.is_valid():
        user = request.session.get("user")
        id = request.POST.get('id')
        mycart = allcart.objects.filter(id=id,uid=user)
        if len(mycart) == 0:
            context = {
            'alert1':False,
            }
            return render(request, 'delCart.html',context)
        else:
            allcart.objects.filter(id=id,uid=user).delete()
            context = {
                'doagain':False,
            }
            return render(request, 'delCart.html',context)
    user = request.session.get("user")
    mycart = allcart.objects.filter(uid=user)
    context = {
        'mycart':mycart,
        'form': form
    }
    return render(request, 'delCart.html', context)

def pay(request):
    form = payForm(request.POST or None)
    if form.is_valid():
        user = request.session.get("user")
        id = request.POST.get('id')
        mycart = allcart.objects.filter(id=id,uid=user)
        if len(mycart) == 0:
            context = {
                'alert1':False,
            }
            return render(request, 'pay.html',context)
        else:
            cartQuality = mycart[0].quality
            allQuality = allgoods.objects.filter(id=mycart[0].gid)[0].quality
            if cartQuality > allQuality:
                context = {
                    'alert2':False,
                }
                return render(request, 'pay.html',context)
            # 結帳成功
            allcart.objects.filter(id=id,uid=user).update(paid="是")
            gid = mycart[0].gid
            seller = allgoods.objects.filter(id=gid)[0].uid
            alldeliver1 = alldeliver(uid=seller, cid=id)
            alldeliver1.save()

            context = {
                'doagain':False,
            }
            return render(request, 'pay.html',context)
    user = request.session.get("user")
    mycart = allcart.objects.filter(uid=user)
    context = {
        'mycart':mycart,
        'form': form
    }
    return render(request, 'pay.html', context)

def deliver(request):
    form = deliverForm(request.POST or None)
    if form.is_valid():
        user = request.session.get("user")
        id = request.POST.get('id')
        mydeliver = alldeliver.objects.filter(id=id,uid=user)
        if len(mydeliver) == 0:
            context = {
                'alert1':False,
            }
            return render(request, 'deliver.html',context)
        else:
            cid = mydeliver[0].cid
            mycart = allcart.objects.filter(id=cid)
            cartQuality = mycart[0].quality
            gid = mycart[0].gid
            allQuality = allgoods.objects.filter(id=gid)[0].quality
            if cartQuality > allQuality:
                context = {
                    'alert2':False,
                }
                return render(request, 'deliver.html',context)
            # 出貨成功
            allcart.objects.filter(id=cid).delete()
            alldeliver.objects.filter(id=id,uid=user).delete()
            allgoods.objects.filter(id=gid).update(quality=allQuality-cartQuality)
            context = {
                'doagain':False,
            }
            return render(request, 'deliver.html',context)
    user = request.session.get("user")
    mydeliver = alldeliver.objects.filter(uid=user)
    mydeliver1 = []
    for i in range(len(mydeliver)):
        mycart = allcart.objects.filter(id=mydeliver[i].cid)[0]
        mydeliver1.append([mydeliver[i].id,mycart.name, mycart.price, mycart.quality, mycart.uid])
    context = {
        'mydeliver':mydeliver1,
        'form': form
    }
    return render(request, 'deliver.html', context)

def logout(request):
    del request.session["user"]
    return render(request, 'logout.html')
