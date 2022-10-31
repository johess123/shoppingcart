from django.db import models

# Create your models here.
class allgoods(models.Model):
    id = models.AutoField(primary_key = True) # 編號
    name = models.CharField(max_length = 10) # 名稱
    price = models.DecimalField(max_digits = 10, decimal_places=0, default=0) # 價錢
    quality = models.DecimalField(max_digits = 10, decimal_places=0, default=0) # 庫存
    uid = models.CharField(max_length = 10) # 商品的所有人

class alluser(models.Model):
    id = models.AutoField(primary_key = True) # 編號
    uid = models.CharField(max_length = 10) # 帳號
    pw = models.CharField(max_length = 10) # 密碼
    kind = models.CharField(max_length=1) # 使用者類型

class allcart(models.Model):
    id = models.AutoField(primary_key = True) # 編號
    uid = models.CharField(max_length = 10) # 帳號
    name = models.CharField(max_length = 10) # 名稱
    price = models.DecimalField(max_digits = 10, decimal_places=0, default=0) # 價錢
    quality = models.DecimalField(max_digits = 10, decimal_places=0, default=0) # 數量
    gid = models.DecimalField(max_digits = 10, decimal_places=0, default=0) # 商品編號
    paid = models.CharField(max_length = 1) # 是否付款

class alldeliver(models.Model):
    id = models.AutoField(primary_key = True) # 出貨編號
    uid = models.CharField(max_length = 10) # 帳號
    cid = models.CharField(max_length = 10) # 購物車編號