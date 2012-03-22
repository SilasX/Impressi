# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(:email => "admin@impressi.com", :password => "foobar", :password_confirmation => "foobar")

d1 = user.decks.new
d1.name = "Righty"
d1.deck_data = []
50.times do |i|
  d1.deck_data << {'class'         => 'step slide editable',
                   'data-x'        => "#{i * 1000}",
                   'data-y'        => '0',
                   'data-z'        => '0',
                   'data-rotate-x' => '0',
                   'data-rotate-y' => '0',
                   'data-rotate-z' => '0',
                   'data-scale'    => '1',
                   'content'       => "Slide #{i}"}
end
d1.template = true
d1.save

d2 = user.decks.new
d2.name = "Lefty"
d2.deck_data = []
50.times do |i|
  d2.deck_data << {'class'         => 'step slide editable',
                   'data-x'        => "#{i * -1000}",
                   'data-y'        => '0',
                   'data-z'        => '0',
                   'data-rotate-x' => '0',
                   'data-rotate-y' => '0',
                   'data-rotate-z' => '0',
                   'data-scale'    => '1',
                   'content'       => "Slide #{i}"}
end
d2.template = true
d2.save

d3 = user.decks.new
d3.name = "Uppy"
d3.deck_data = []
50.times do |i|
  d3.deck_data << {'class'         => 'step slide editable',
                   'data-x'        => '0',
                   'data-y'        => "#{i * 1000}",
                   'data-z'        => '0',
                   'data-rotate-x' => '0',
                   'data-rotate-y' => '0',
                   'data-rotate-z' => '0',
                   'data-scale'    => '1',
                   'content'       => "Slide #{i}"}
end
d3.template = true
d3.save

d4 = user.decks.new
d4.name = "Downy"
d4.deck_data = []
50.times do |i|
  d4.deck_data << {'class'         => 'step slide editable',
                   'data-x'        => '0',
                   'data-y'        => "#{i * -1000}",
                   'data-z'        => '0',
                   'data-rotate-x' => '0',
                   'data-rotate-y' => '0',
                   'data-rotate-z' => '0',
                   'data-scale'    => '1',
                   'content'       => "Slide #{i}"}
end
d4.template = true
d4.save

# d2 = user.decks.new
# d2.name = "Template 2"
# d2.deck_data = [{'class' => 'step slide editable', 'data-x' => '0', 'data-y' => '1000', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '0', 'data-rotate-z' => '0',
#                  'data-scale' => '1', 'content' => 'Slide 1'},
#                 {'class' => 'step slide editable', 'data-x' => '0', 'data-y' => '2000', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '0', 'data-rotate-z' => '0',
#                  'data-scale' => '1', 'content' => 'Slide 2'},
#                 {'class' => 'step slide editable', 'data-x' => '0', 'data-y' => '3000', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '0', 'data-rotate-z' => '0',
#                  'data-scale' => '1', 'content' => 'Slide 3'},
#                 {'class' => 'step slide editable', 'data-x' => '0', 'data-y' => '4000', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '0', 'data-rotate-z' => '0',
#                  'data-scale' => '1', 'content' => 'Slide 4'},
#                 {'class' => 'step slide editable', 'data-x' => '0', 'data-y' => '5000', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '0', 'data-rotate-z' => '0',
#                  'data-scale' => '1', 'content' => 'Slide 5'}]
# d2.template = true
# d2.save
# 
# d3 = user.decks.new
# d3.name = "Sphinx"
# d3.deck_data = [{'class' => 'step editable', 'data-x' => '0', 'data-y' => '0', 'data-z' => '-1000', 'data-rotate-x' => '-90', 'data-rotate-y' => '0', 'data-rotate-z' => '0',
#                  'data-scale' => '4', 'content' => 'Slide 1'},
#                 {'class' => 'step editable', 'data-x' => '0', 'data-y' => '800', 'data-z' => '1000', 'data-rotate-x' => '0', 'data-rotate-y' => '-30', 'data-rotate-z' => '180',
#                  'data-scale' => '1', 'content' => 'Slide 2'},
#                 {'class' => 'step editable', 'data-x' => '-1000', 'data-y' => '-800', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '30', 'data-rotate-z' => '0',
#                  'data-scale' => '1', 'content' => 'Slide 3'},
#                 {'class' => 'step editable', 'data-x' => '0', 'data-y' => '-800', 'data-z' => '-200', 'data-rotate-x' => '0', 'data-rotate-y' => '0', 'data-rotate-z' => '0',
#                  'data-scale' => '1', 'content' => 'Slide 4'},
#                 {'class' => 'step editable', 'data-x' => '1000', 'data-y' => '-800', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '-30', 'data-rotate-z' => '0',
#                  'data-scale' => '1', 'content' => 'Slide 5'},
#                 {'class' => 'step editable', 'data-x' => '1000', 'data-y' => '0', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '-30', 'data-rotate-z' => '90',
#                  'data-scale' => '1', 'content' => 'Slide 6'},
#                 {'class' => 'step editable', 'data-x' => '-1000', 'data-y' => '0', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '30', 'data-rotate-z' => '-90',
#                  'data-scale' => '1', 'content' => 'Slide 7'},
#                 {'class' => 'step editable', 'data-x' => '-1000', 'data-y' => '800', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '30', 'data-rotate-z' => '-180',
#                  'data-scale' => '1', 'content' => 'Slide 8'},
#                 {'class' => 'step editable', 'data-x' => '0', 'data-y' => '0', 'data-z' => '-200', 'data-rotate-x' => '0', 'data-rotate-y' => '0', 'data-rotate-z' => '0',
#                  'data-scale' => '1', 'content' => 'Slide 9'},
#                 {'class' => 'step editable', 'data-x' => '0', 'data-y' => '0', 'data-z' => '0', 'data-rotate-x' => '0', 'data-rotate-y' => '0', 'data-rotate-z' => '0',
#                  'data-scale' => '3', 'content' => 'Slide 10'}]
# d3.template = true
# d3.save
