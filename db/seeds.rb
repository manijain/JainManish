# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.connection.execute("TRUNCATE users")
status = User.create([{ :email => 'manijain333@gmail.com' },{ :password => 'pinkcity' }, { :password_confirmation => 'pinkcity' }])
status.update_attributes(:is_admin => true)