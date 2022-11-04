from django import forms

from .models import alluser, allgoods

class registForm(forms.ModelForm):
    class Meta:
        model = alluser
        fields = ('uid','pw','kind')
        labels = {
            'uid':('帳號'),
            'pw':('密碼'),
            'kind':('使用者/管理者(u/a)'),
        }

class loginForm(forms.ModelForm):
    class Meta:
        model = alluser
        fields = ('uid','pw','kind')
        labels = {
            'uid':('帳號'),
            'pw':('密碼'),
            'kind':('使用者/管理者(u/a)'),
        }

class addGoodsForm(forms.ModelForm):
    class Meta:
        model = allgoods
        fields = ('name','price','quality')
        labels = {
            'name':('商品名稱'),
            'price':('商品價格'),
            'quality':('庫存數量'),
        }

class updateGoodsForm(forms.Form):
    id = forms.DecimalField(label='商品編號')
    name = forms.CharField(label='名稱', max_length = 10)
    price = forms.DecimalField(label='價格', max_digits = 10, decimal_places=0)
    quality = forms.DecimalField(label='庫存', max_digits = 10, decimal_places=0)

class delGoodsForm(forms.Form):
    id = forms.DecimalField(label='商品編號')

class addCartForm(forms.Form):
    id = forms.DecimalField(label='商品編號')
    quality = forms.DecimalField(label='數量', max_digits = 10, decimal_places=0)\

class delCartForm(forms.Form):
    id = forms.DecimalField(label='購物車編號')

class payForm(forms.Form):
    id = forms.DecimalField(label='購物車編號')

class deliverForm(forms.Form):
    id = forms.DecimalField(label='出貨編號')

class goodForm(forms.Form):
    id = forms.DecimalField(label='商品編號')