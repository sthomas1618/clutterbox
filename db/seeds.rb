# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(first_name: 'Stephen',
					  last_name:  'Thomas',
					  username:   'sthomas',
					  email:      'sthomas1618@gmail.com',
					  password:   'alliance',
					  password_confirmation: 'alliance')
