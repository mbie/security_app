# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.delete_all
Project.delete_all
[['mateusz','solid',true],['tomek','notsolid',false]].each do |name,password,admin|
  User.create(:name => name, :password => password, :admin => admin)
end

[['pierwszy','opis pierwszego'],['drugi','opis drugiego'],['trzeci','opis trzeciego']].each do |title,desc|
  Project.create(:title => title, :description => desc)
 end
   
