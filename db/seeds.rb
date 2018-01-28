# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(email: 'admin@gmail.com', password: "75d23af4", password_confirmation: "75d23af4")
User.create!(email: 'berkana_show@mail.ru', password: "e7229d74", password_confirmation: "e7229d74")
User.create!(email: 'torerolda@gmail.ru', password: "f23858dc", password_confirmation: "f23858dc")

Setting.create({'title' => 'SMS-уведомления', 'name' => 'sms_notification', 'status' => 0})
