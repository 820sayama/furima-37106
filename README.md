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

         
has_many :order
has_many :items

# itemsテーブル


| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| products           | string    　　 | null: false,          |
| price              | integer   　　 | null: false,            |
| explanation        | text       　　| null: false,           |
| category_id        | integer        | null: false,            |
| delivery_fee_id       |  integer     　 | null: falseL,                  |  
| prefecture_id   | integer        | null: false,                    |
| delivery_days_id      | integer        | null: falseL,                    |
| user        　　　  | references       | null: falseL,  Foreign key                    |

belongs_to :user
has_one :order



# ordersテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| user               | references     | null: false,Foreign key          |
| item               | references     | null: false ,Foreign key           |


belongs_to :item
has_one :deliver_address
# deliver_addressテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| user               | references     | null: false , Foreign key           |
| zip_code           | string       | null: false                     |
| prefecture_id      | integer        | null: false                    |
| city               | string         | null: false                    |
| address1           | string         | null: false                     |
| address2           | string         |                              |
| telephone          | string         | null: false                   |

belongs_to :order



