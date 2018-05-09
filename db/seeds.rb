# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#seed users
matt = User.create!(email:'matt@gmail.com', password: '111111', password_confirmation: '111111', name: 'Matt')
mou = User.create!(email:'mou@gmail.com', password:'111111', password_confirmation: '111111', name: 'Mou')
angel = User.create!(email:'angel@gmail.com', password:'111111', password_confirmation: '111111', name: 'Angel')

#seed trips
Trip.create!(user_id: matt.id, name: 'Mexico', budget: 1000, start_date: "2018/05/01", end_date: "2018/05/10", daily_budget: 100, total_days: 10, spend_count: 0)
Trip.create!(user_id: matt.id, name: 'Panama', budget: 2000, start_date: "2017/05/01", end_date: "2017/05/10", daily_budget: 200, total_days: 10, spend_count: 1767)
Trip.create!(user_id: matt.id, name: 'Costa Rica', budget: 2000, start_date: "2016/05/01", end_date: "2016/05/10", daily_budget: 200, total_days: 10, spend_count: 2100)
Trip.create!(user_id: matt.id, name: 'Honduras', budget: 3000, start_date: "2018/10/01", end_date: "2018/10/10", daily_budget: 300, total_days: 10, spend_count: 0)
Trip.create!(user_id: matt.id, name: 'Canada', budget: 3000, start_date: "2019/10/01", end_date: "2019/10/10", daily_budget: 300, total_days: 10, spend_count: 0)
Trip.create!(user_id: mou.id, name: 'USA', budget: 10000, start_date: "2018/05/06", end_date: "2018/05/10", daily_budget: 2000, total_days: 5, spend_count: 0)
Trip.create!(user_id: mou.id, name: 'Peru', budget: 100, start_date: "2000/05/01", end_date: "2000/05/10", daily_budget: 10, total_days: 10, spend_count: 0)
