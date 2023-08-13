# README

# テーブル設計

## users テーブル

| Column             | Type   | Options                        |
| ------------------ | ------ | -----------                    |
| nickname           | string | null: false                    |
| last_name          | string | null: false                    |
| first_name         | string | null: false                    |
| last_name_kana     | string | null: false                    |
| first_name_kana    | string | null: false                    |
| email              | string | null: false, PRIMARY KEY: true |
| encrypted_password | string | null: false                    |
| birthdate          | date   | null: false                    |


### Association

- has_many :items
- has_many :orders



## items テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| name                 | string     | null: false                    |
| description          | text       | null: false                    |
| category_id          | references | null: false                    |
| condition_id         | references | null: false                    |
| shipping_fee_id      | references | null: false                    |
| prefecture_id        | references | null: false                    |
| shipping_duration_id | references | null: false                    |
| price                | integer    | null: false                    |
| user                 | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_one :order


## orders テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| item               | references | null: false, foreign_key: true |



### Association

- belongs_to :item
- belongs_to :user
- has_one :address



## addresses テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| postal _code       | string     | null: false                    |
| prefecture_id      | references | null: false                    |
| city               | string     | null: false                    |
| address            | string     | null: false                    |
| building_name      | string     | null: false                    |
| phone_number       | string     | null: false                    |
| order              | references | null: false, foreign_key: true |


### Association

- belongs_to :order






# ディレクトリ内の詳細

| ディレクトリ	         | ファイル名               	| 詳細                                      |
| devise/registrations	| new.html.erb	            | ユーザー新規登録ページ                      |
| devise/sessions	      | new.html.erb	            | ユーザーログインページ                      |
| items 	              | edit.html.erb	            | 商品を編集するページ                        |
|                       | index.html.erb	          | トップページ                               |
|                       | new.html.erb	            | 商品を出品するページ                        |
|                       | show.html.erb	            | 商品の詳細を確認するページ                   |
| layouts	              | application.html.erb	    | レイアウトファイル                          |
| shared	              | _error_messages.html.erb	| エラーメッセージ                            |
|                       | _footer.html.erb	        | トップページ・商品詳細フッター               |
|                       | _header.html.erb	        | トップページ・詳細ヘッダー                  |
|                       | _second-footer.html.erb	  | ユーザー新規登録・ログイン・商品購入フッター  |
|                       | _second-header.html.erb	  | ユーザー新規登録・ログイン・商品購入ヘッダー  |
| orders	              | index.html.erb	          | 商品を購入する時のページ                    |