# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create!(username: 'Josh88', name: 'Josh', email: 'josh88@gmail.com', birthday: '1981-03-23', password: 'rollingstone')
user2 = User.create!(username: 'flynn33', name: 'Flynn', email: 'flynn@gmail.com', birthday: '2013-04-23', password: 'ilovefish')

blog1 = user1.blog_posts.create!(title: 'Football', blog_entry: 'I have been playing football since I was 9, and I am the best football player around!')
blog2 = user2.blog_posts.create!(title: 'Fish', blog_entry: 'I have eating fish since I was 2, and I am the best football player around!')
blog3 = user2.blog_posts.create!(title: 'Chicken', blog_entry: 'I have been playing football since I was 9, and I am the best football player around!')

blog1.comments.create!(user: user1, comment_entry: "My dad's more of a soccer player!")
blog2.comments.create!(user: user2, comment_entry: "Do you like sushi?")
blog3.comments.create!(user: user1, comment_entry: "My dad's more of a soccer player!")