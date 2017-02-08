# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
create_user = User.create([email: 'rorusage@gmail.com',
                           password: 'rorusage',
                           password_confirmation: 'rorusage',
                           name: "rorusage"])
create_account_owner = Account::Owner.create([user_id: "1",
                        content: "Hi, This is Rorusage's first self-build blog!"])
