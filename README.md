# README
# freemarket_sample_74a DB設計

## ユーザー
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|name|string|null: false|
|name_kana|string|null: false|
|birthdate|integer|null: false|
|phone|integer|null: false|

### Association

- has_many :credits
- has_many :items
- has_many :comments

------------------------------------
## 商品
## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|item_name|string|null: false|
|price|integer|null: false|
|size|string|null: false|
|content|text|null: false|
|status|integer|null: false|
|category_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :user
- has_many :item_images
- has_many :comments
- belongs_to :shipping
- belongs_to :brand
- has_many :categories

------------------------------------
## 発送
## shippingテーブル

|Column|Type|Options|
|------|----|-------|
|item_name|string|null: false|
|ship_base|integer|null: false|
|region|string|null: false|
|city|string|null: false|
|block|string|null: false|
|ship_method|string|null: false|
|ship_date|string|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :item

------------------------------------
## クレジットカード
## creditテーブル

|Column|Type|Options|
|------|----|-------|
|credit_cardapproval_code|integer|null: false, unique: true|
|exp|integer|null: false|
|security_cord|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :user

------------------------------------
## コメント
## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :item

------------------------------------
## カテゴリー
## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|

### Association

- belongs_to :item

------------------------------------
## ブランド
## brandsテーブル

|Column|Type|Options|
|------|----|-------|
|brand|string|null: false|

### Association

- has_many :items

------------------------------------

## ブランド
## item_imegesテーブル

|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :item

------------------------------------