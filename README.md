# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
|address|string|

### Association
- has_many :posts
- has_many :comments
- has_many :groups through: :groups_users

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :posts
- belongs_to :user

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|groupname|string|null: false|
### Association
- has_many :groups_users
- has_many :users through: :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## targetsテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false, foreign_key: true|
|age|integer|null: false, foreign_key: true|
|name|integer|null: false, foreign_key: true|
|age|integer|null: false, foreign_key: true|
### Association
- has_many :group through: :groups_target
- has_many :groups_target

## groups_targetsテーブル
|Column|Type|Options|
|------|----|-------|
|target_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :target
