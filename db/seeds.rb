User.destroy_all

u1 = User.create :email => 'nelson@ga.co', :password =>'nelson', :image =>"https://carlsbadcravings.com/wp-content/uploads/2020/07/Doner-Kebabs-v14-500x500.jpg", :info => "However, the end of the world approaches, and time is however, the end of the world approaches, and time is however, the end of the world approaches, and time is" :admin => true
u2 = User.create :email => 'jono@ga.co',:password =>'nelson',:image =>"https://carlsbadcravings.com/wp-content/uploads/2020/07/Doner-Kebabs-v14-500x500.jpg", :info => "However, the end of the world approaches, and time is however, the end of the world approaches, and time is however, the end of the world approaches, and time is"

puts "#{ User.count } users"

Score.destroy_all

s1 = Score.create :point => 4.576
s2 = Score.create :point => 3.789
s3 = Score.create :point => 7.564

puts "#{ Score.count } scores"

Riddle.destroy_all

r1 = Riddle.create :name => 'Race Positions', :question => "You are in a race and you pass the person in second place. What place are you in now?", :answer => "second"
r2 = Riddle.create :name => 'Rainbows', :question => "What is at the end of the rainbow?", :answer => "W"
r3 = Riddle.create :name => 'What is wrong?', :question => "What word is always spelled wrong?", :answer => "wrong"

puts "#{ Riddle.count } riddles"



#Association

puts "User and Riddles"

u1.riddles << r1
u2.riddles << r2
u2.riddles << r3


puts "User and Scores"

u1.scores << s1
u1.scores << s2
u1.scores << s3

puts "Riddle and Scores"

r1.scores << s2

