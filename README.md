# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| name               | string | null: false |
| kana_name          | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| birthdate          | text   | null: false |


### Association

- has_many :items


## item テーブル

| Column               | Type       | Options     |
| -------------------- | ---------- | ----------- |
| image                | string     | null: false |
| name                 | text       | null: false |
| description          | text       | null: false |
| condition            | references | null: false |
| shipping_fee         | string     | null: false |
| prefecture           | text       | null: false |
| shipping_duration    | text       | null: false |
| price                | references | null: false |
| user                 | references | null: false |


### Association

- belongs_to :users
- has_one :orders

## orders テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| card_info          | text       |                                |
| expiration_date    | references | null: false, foreign_key: true |
| security_code      | references | null: false, foreign_key: true |
| postal_code        | text       |                                |
| prefecture         | references | null: false, foreign_key: true |
| city               | references | null: false, foreign_key: true |
| address            | text       |                                |
| building_name      | references | null: false, foreign_key: true |
| phone_number       | references | null: false, foreign_key: true |
| item               | references | null: false, foreign_key: true |


### Association

- belongs_to :items




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