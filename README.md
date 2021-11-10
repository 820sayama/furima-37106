# README

# users テーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| email              | string         | NOT NULL, ユニーク制約         |
| encrypted_password | string         | NOT NULL                     |
| name               | string         | NOT NULL                     |


# itemsテーブル


| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| user               | string         | NOT NULL, 外部キー            |
| item               | string         | NOT NULL                     |
| category           | text           | NOT NULL                     |
| price              | string         | NOT NULL,                    ｜

# ordersテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| item_id            | references     | NOT NULL , 外部キー           |
| buyer_user_id      | references     | NOT NULL , 外部キー           |

# deliver_addressテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| user_id            | references     | NOT NULL , 外部キー           |
| address            | string         | NOT NULL                     |
| telephone          | string         | NOT NULL , ユニーク制約        |

