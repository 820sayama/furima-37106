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

# buyテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| user               | string         | NOT NULL , 外部キー           |

# send_addressテーブル

| Column             | Type           | Options                      |
| ------------------ | ------------   | --------------------------   |
| user               | string         | NOT NULL , 外部キー           |
