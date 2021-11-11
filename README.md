# README

# users テーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| email              | string         | null: falseL,unique: true        |
| encrypted_password | string         | null: false                    |
| nickname           | string         | null: false                    |
| first_name         | string         |  null: false                    |
| last_name          | string         |  null: false                  |
| first_name_kana    | string         |  null: false                |
| last_name_kana     | string         |   null: false                  |
| birthday_day       | date           |   null: false                   |

         

has_many :items
has_many :orders dependent: :destroy

# itemsテーブル


| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| category_id        | integer        | null: false, 外部キー            |
| shipping_id	       | integer        | null: false, 外部キー            |
| brand_id           | integer        | null: false, 外部キー            |
| seller_user_id     | integer        | null: false, 外部キー            |
| name               |  string        | null: falseL,                    |
| text               | references	    | null: falseL, 外部キー            
| condition_id        | integer        | null: false,                    |
| price              | integer        | null: falseL,                    |
| trading_status	   | integer	      | null: false,                    |
| completed_at       | datetime	      | null: false,                    |


belongs_to :user
has_one :order



# ordersテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| buyer_user         | references     | null: false,外部キー             |
| item               | references     | null: false ,外部キー            |

belongs_to :user
belongs_to :item
has_many :deliver_address
# deliver_addressテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| user               | references     | null: false ,           |
| zip_code           | string       | null: false                     |
| prefecture_id      | string         | null: false                    |
| city               | string         | null: false                    |
| address1           | string         | null: false                     |
| address2           | string         |                              |
| telephone          | string         | null: false ,                   |

belongs_to :orders



