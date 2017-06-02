# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "admin@test.com"


u.username = "xiaowu"


u.password = "123123"

u.password_confirmation = "123123"

u.is_admin = true
u.save
Product.create!(title: "smartsion m1",
                 description: "好用，强大",
                 price: 2800,
                 quantity: 10,
                 image: open("https://ws3.sinaimg.cn/large/006tNc79gy1fg7a5w7y3uj30eh0ctt9s.jpg")
                 )
