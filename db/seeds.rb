# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.find_or_create_by(name: 'system_admin')

user = User.find_or_create_by!(email: 'warren@katapultmedia.com') do |u|
  u.password = 'password'
end

user.add_role :system_admin
