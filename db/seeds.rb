User.destroy_all

u1 = User.create :email => 'nelson@ga.co', :password =>'nelson', :admin => true
u2 = User.create :email => 'jono@ga.co',:password =>'nelson', :info => "Nice person"

puts "#{ User.count } users"

Score.destroy_all

s1 = Score.create :point => 23
s2 = Score.create :point => 24
s3 = Score.create :point => 26

puts "#{ Score.count } scores"

Riddle.destroy_all

r1 = Riddle.create :name => 'maths 1', :question => "what is 1+1?", :answer => "2"
r2 = Riddle.create :name => 'animals 1', :question => "What is yellow and black and makes honey?", :answer => "Bee"
r3 = Riddle.create :name => '???', :question => "what smells?", :answer => "you"

puts "#{ Riddle.count } riddles"



#Association

puts "User and Riddles"

u1.riddles << r1
u2.riddles << r2
u2.riddles << r3


puts "User and Scores"

u1.scores << s1

puts "Riddle and Scores"

r1.scores << s2

