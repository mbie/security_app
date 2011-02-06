# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.delete_all
Project.delete_all
Article.delete_all

[['mateusz','rails',true],['tomek','ruby',false]].each do |name,password,admin|
  User.create(:name => name, :password => password, :admin => admin)
end

[['Pierwszy projekt','Opis pierwszego'],['Drugi','Opis drugiego'],['Pierwszy i drugi','Opis projektow']].each do |title,desc|
  Project.create(:title => title, :description => desc)
end

[['Przekierowanie na strone KIA','<span onmouseover=javascript:window.location="http://www.kia.prz.edu.pl/";>Najedz myszka TUTAJ</span>'],
['Automatyczne przekierowanie na KIA','<body onload=window.location="http://www.kia.prz.edu.pl/">'],
['Modyfikacja strony','<script>var d = document; d.write(\'<div style="font-size:200px"> TEST </div>\'); </script>'],
['Zapisz do cookie','  <script>document.cookie=\'_session_id=0ac3e60991ac9fca1ed5a4ac200e46f9\'</script>'],
['Wyswietl cookie','<script>alert(document.cookie)</script>'],
['XSS poprzez atrybut tabeli','<TABLE><TD BACKGROUND="javascript:alert(\'Atak XSS\')"> </table>'],
].each do |title,body|
  Article.create(:title => title, :body => body)
end


   
