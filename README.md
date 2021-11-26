# README
  
## アプリケーション名:病院予約システム
---

 ### 利用方法
 * ユーザー登録をし、ログインしていただくと、病院受診を予約することができます。

### 目指した問題解決
 * 日中に忙しくて病院の受診予約が後回しになってしまう社会人がいつでも病院受診を予約できること

 ### 洗い出した要件
  * ユーザー管理機能
  * 予約機能
  * 予約確認機能
  * 予約削除機能
  * 過去の診察結果確認機能

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