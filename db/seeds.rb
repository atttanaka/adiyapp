# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  name: "user1",
  email: "a@b.cde",
  password: "abcde",
  permit: true
  )

User.create!(
  name: "user2",
  email: "f@g.hij",
  password: "fghij",
  permit: false
  )

Admin.create!(
  name: "admin1",
  email: "a@d.min",
  password: "admin",
  permit: true
  )

Admin.create!(
  name: "admin2",
  email: "a@d.min2",
  password: "admin2",
  permit: false
  )

Company.create!(
  name: "company1",
  email: "c@o.mpany",
  password: "company",
  permit: true
  )

Company.create!(
  name: "company2",
  email: "c@o.mpany2",
  password: "company2",
  permit: false
  )

Articlemanage.create!(
  title: "記事タイトル１ユーザー１",
  thumb_text: "記事概要1ユーザー1 承認済み",
  user_id: "1",
  permit: true
  )

Articlemanage.create!(
  title: "記事タイトル2企業ユーザー１",
  thumb_text: "記事概要2企業ユーザー1",
  company_id: "1"
  )

Articlemanage.create!(
  title: "記事タイトル3ユーザー１",
  thumb_text: "記事概要1ユーザー1 未承認",
  user_id: "1",
  permit: false
  )
Article.create!(
  content_text: "記事1-1",
  content_number: "1",
  articlemanage_id: "1"
  )

Article.create!(
  content_text: "記事1-2",
  content_number: "2",
  articlemanage_id: "1"
  )

Article.create!(
  content_text: "記事1-3",
  content_number: "3",
  articlemanage_id: "1"
  )

Article.create!(
  content_text: "記事2-1",
  content_number: "1",
  articlemanage_id: "2"
  )

Article.create!(
  content_text: "記事2-2",
  content_number: "2",
  articlemanage_id: "2"
  )

Article.create!(
  content_text: "記事2-3",
  content_number: "3",
  articlemanage_id: "2"
  )


