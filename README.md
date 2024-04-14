# きょうりゅうずかん
URL: 

## 概要
幼稚園～小学生低学年向けの恐竜図鑑アプリです。
基本機能：恐竜の一覧表示/詳細表示 トピックスの一覧表示
管理者ログイン/ログアウト：恐竜の投稿/編集/削除 トピックスの投稿/削除

## 背景
一般的に動物や昆虫などの生き物に一番興味を持つのは子供なのですが、インターネット上の図鑑サイトは漢字が多かったり、子供にはわかりづらい文法だったりして大人向けの図鑑サイトばかりなので作成に至りました。

## 開発環境
・フロントエンド<br>
HTML/CSS javascript<br>
・ バックエンド<br>
Ruby on Rails<br>
・ タスク管理<br>
Github  

# きょうりゅうずかんのER図
## adminテーブル
| Column             | Type      | Options     |
| -------------------| --------- | ----------- |
|email               |string     |null:false, unique: true |
|encrypted_password  |string     |null:false   |
### Association
has_many :dinosaurs

## dinosaurテーブル

| Column             | Type      | Options     |
| -------------------| --------- | ----------- |
|name                |string     |null:false   |
|eating_id           |integer    |null:false   |
|era_id              |integer    |null:false   |
|size                |string     |null:false   |
|weight              |string     |null:false   |
|explanation         |text       |null:false   |
|admin               |references |null:false, foreign_key: true |
### Association
belongs_to :admin

## topicテーブル
|topic               |string     |null:false   |










