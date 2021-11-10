# README

# users テーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| email              | string         | NOT NULL, ユニーク制約         |
| password           | string         | NOT NULL                     |
| nickname           | string         | NOT NULL                     |
| first_name         | string         | NOT NULL                     |
| last_name          | string         | NOT NULL                     |
| first_name_kana    | string         | NOT NULL                     |
| last_name_kana     | string         | NOT NULL                     |
| birth_year         | integer        | NOT NULL                     |
| birth_month        | integer        | NOT NULL                     |
| birthday_day       | integer        | NOT NULL                     |
| phone_num          | string         | NOT NULL                     |
| status             | integer        | NOT NULL                     |
| content            | text           | NOT NULL                     |
         

has_many :items
has_one :deliver_addresses dependent: :destroy
has_many :orders dependent: :destroy

# itemsテーブル


| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| category_id        | references	    | NOT NULL, 外部キー            |
| shipping_id	       | references	    | NOT NULL, 外部キー            |
| brand_id           | references	    | NOT NULL, 外部キー            |
| seller_user_id     | references	    | NOT NULL, 外部キー            |
| name               |  string        | NOT NULL,                    |
| text               | references	    | NOT NULL,                    |
| condition          | integer        | NOT NULL,                    |
| price              | integer        | NOT NULL,                    |
| trading_status	   | integer	      | NOT NULL,                    |
| completed_at       | datetime	      | NOT NULL,                    |


belongs_to :user
has_one :order



# ordersテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| buyer_user_id      | references     | NOT NULL,外部キー             |
| item_id            | references     | NOT NULL ,外部キー             |

belongs_to :user
belongs_to :item

# deliver_addressテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| user_id            | references     | NOT NULL , 外部キー           |
| family_name        | string         | NOT NULL                     |
| first_name         | string         | NOT NULL                     |
| family_name_kana	 | string         | NOT NULL                     |
| first_name_kana    | string         | NOT NULL                     |
| zip_code           | integer        | NOT NULL                     |
| prefecture         | string         | NOT NULL                     |
| city               | string         | NOT NULL                     |
| address1           | string         | NOT NULL                     |
| address2           | string         |                              |
| telephone          | string         | NOT NULL ,ユニーク制約         |

belongs_to :user




