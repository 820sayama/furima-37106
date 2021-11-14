# README

# users テーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| email              | string         | null: false,unique: true        |
| encrypted_password | string         | null: false                    |
| nickname           | string         | null: false                    |
| first_name         | string         |  null: false                    |
| last_name          | string         |  null: false                  |
| first_name_kana    | string         |  null: false                |
| last_name_kana     | string         |   null: false                  |
| birthday_day       | date           |   null: false                   |

         
has_many :orders
has_many :items

# itemsテーブル


| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| product          | string    　　 | null: false        |
| price              | integer   　　 | null: false            |
| explanation        | text       　　| null: false          |
| category_id        | integer        | null: false            |
| delivery_fee_id       |  integer     　 | null: false                  |  
| prefecture_id   | integer        | null: false                    |
| delivery_day_id      | integer        | null: false                   |            |
| condition_id       |  integer     　 | null: false                 | 
| user        　　　  | references       | null: false,  foreign_key: true                    |

belongs_to :user
has_one :order



# ordersテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| user               | references     | null: false,foreign_key: true         |
| item               | references     | null: false ,foreign_key: true           |

belongs_to :user
belongs_to :item
has_one :deliver_address
# deliver_addressesテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| zip_code           | string       | null: false                     |
| prefecture_id      | integer        | null: false                    |
| city               | string         | null: false                    |
| address         　　| string         | null: false                     |
| building           | string         |                              |
| telephone          | string         | null: false                   |
| order              | references     | null: false, foreign_key: true     
belongs_to :order



