# Shopkit

ShopQi Ruby API 客户端

## 安装

$ gem install shopkit

## 使用

* 通过 api clients 访问

    require 'shopkit'
    Shopkit.setup url: 'https://your-shop-name.shopqi.com', login: 'api key', password: 'password'
    Shopkit.orders # 获取订单

`api key`, `password` 在商店后台管理 [应用] - [私有应用]，点击"生成新的应用"即可看到

* 通过 OAuth2 访问

    require 'shopkit'
    Shopkit.setup url: 'https://rubyconfchina-shop.shopqi.com', access_token: 'access token'
    Shopkit.products # 获取商品

`access token`为商店授权给应用后获取

## API

### 商店

[商店属性](https://github.com/saberma/shopqi/blob/master/app/views/api/v1/shops/show.rabl)

### 订单

[订单属性](https://github.com/saberma/shopqi/blob/master/app/views/api/v1/orders/show.rabl)
[订单商品](https://github.com/saberma/shopqi/blob/master/app/views/api/v1/orders/line_items/show.rabl)

### 商品

[商品属性](https://github.com/saberma/shopqi/blob/master/app/views/api/v1/products/show.rabl)
[商品款式](https://github.com/saberma/shopqi/blob/master/app/views/api/v1/product_variants/show.rabl)
