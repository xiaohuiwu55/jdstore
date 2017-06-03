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
Product.create!(title: "HHKB Professional 2",
                 description: "程序员和文字编辑人员的神器，没有之一",
                 price: 1699,
                 quantity: 10,
                 image: open("http://oqvivcwdf.bkt.clouddn.com/45c1d85cc93bb56f66471b5d29c36805.jpg%21middle")
                 )
