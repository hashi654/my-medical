# README

## Users テーブル
| Colum              | Type     | Options     |
| ------------------ | -------- |------------ |
| lastname           | string   | null: false |
| firstname          | string   | null: false |
| kana_lastname      | string   | null: false |
| kana_firstname     | string   | null: false |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false |
| patient_id         | integer  | null: false, unique: true |
| prefecture         | integer  | null: false |
| city               | string   | null: false |
| address            | string   | null: false |
| building           | string   |             |
| phone              | string   | null: false |

### Association
has_many :results
has_many :orders
has_many :schedules

## Results テーブル
| Colum              | Type       | Options     |
| ------------------ | ---------  |------------ |
| date               | datetime   | null: false |
| right_eye          | integer    | null: false |
| left_eye           | integer    | null: false |
| status             | status     | null: false |
| comment            | text       |             |
| user_id            | references | null: false |

### Association
belongs_to :user

## Orders テーブル
| Colum              | Type       | Options     |
| ------------------ | ---------  |------------ |
| user_id            | references | null: false |
| schedule_id        | references | null: false |

### Association
belongs_to :user
belongs_to :schedule

## Schedules テーブル
| Colum              | Type       | Options     |
| ------------------ | ---------  |------------ |
| year               | integer    | null: false |
| month              | integer    | null: false |
| day                | integer    | null: false |
| hour               | integer    | null: false |
| user_id            | references | null: false |

### Association
has_one :order
belongs_to :user