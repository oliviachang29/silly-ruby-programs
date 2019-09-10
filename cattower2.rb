# Instructions
# Click "run" in the upper right ^
# Don't cheat and look at the code
# Have fun!
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --
# --

# Variables
health = 100

# Functions
require 'io/console'                                                                                                                                                                                                                               

def game_over
	abort("
   _   _  ___    _    ____ _   _  __ 
  (_/_(_(_// (__(/_  (_) (/___(/_/ (_
 .-/                                 
(_/                                  
		
but happy birthday!")
end

def fight(health, x)
	sleep(1.5)
	other_cat_health  = rand(10..20) * x
	other_cat_damage = rand(1..20) * x
	other_cat_health -= other_cat_damage
	puts "You fight back! The other cat sustained #{other_cat_damage} damage and has #{other_cat_health} health." 
	sleep(2)
	if other_cat_health <= 0
		health += 20 * x
		puts "The other cat is defeated! You are a stronger cat and gained +10 health. You have #{health} health now."
	else
		damage = rand(1..10) * x
		health -= damage
		puts "The other cat fights back! You lost #{damage} health."
		if health <= 0
			puts "You've lost too much health."
			game_over
		else
			fight(health, x)
		end
	end
end

def run(health, x)
	damage = rand(1..10) * x
	health -= damage
	if health <= 0
		puts "You've lost too much health."
		game_over
	else
		puts "You sustained #{damage} damage, but escape."
		sleep(1.5)
	end
end

# =====
# START
# =====

puts "
 _  _  _/_   _/_ ____   _  _  __ 
(__(_(_(__   (__(_) (_(/ _(/_/ (_
 "
sleep(0.5)
puts "made by Olivia Chang"
sleep(1.5)
puts "You are a cat. What is your name?"
name = gets.chomp
puts "#{name} cautiously approaches the cat tower." 
sleep(1.5)
def locked_door
	puts "The door to the tower is locked. What do you do?
	1 - Try to open it anyway
	2 - Meow for help"
	if gets.chomp == "2"
		puts "The door creaks open. There is no one behind it."
		sleep(1.5)
	else
		puts "Nothing happens."
		sleep(1.5)
		locked_door
	end
end
locked_door
puts "The first floor of the tower is covered with cobwebs and dust."
sleep(1.5)
puts "You walk a few steps, but not before you see writing on the floor." 
puts "          
  /)                     
 (/_  _ _   _ _   __   _ 
/_) _(/_(_(/ (_(_/ (__(/_
                 
"
sleep(1.5)
puts "#{name} continues walking."
sleep(1.5)
puts "Suddenly, a cat jumps out at #{name}! What will you do?
1 - Fight
2 - Run away"
gets.chomp == "1" ? fight(health, 1) : run(health, 1)
puts "#{name} continues on."
sleep(1.5)
def bastet_altar
	puts "Ahead of you stands an altar to Bastet, the Egyptian God of cats. What do you do?
	1 - Approach it
	2 - Retreat back
	3 - Walk around it"
	if gets.chomp == "1"
		puts "You approach it. Nothing seems to happen..."
		sleep(1.5)
		choice = rand(0..1)
		if choice == 0
			print "until you fall into a trapdoor!"
			sleep(0.5)
			puts "The room you fall into is filled with venomous snakes!"
			game_over
		else 
			puts "Phew!"
			sleep(1.5)
		end
	elsif gets.chomp == "2"
		puts "Nope, you can't go back."
		sleep(1.5)
		bastet_altar
	else
		puts "You walk around it. Nothing seems to happen..."
		sleep(1.5)
		choice = rand(0..12)
		if choice <= 2
			print "until you fall into a trapdoor!"
			sleep(0.5)
			puts "The room you fall into is filled with pandas, but you're stuck!"
			game_over
		else 
			puts "Phew!"
			sleep(1.5)
		end
	end
end
bastet_altar
puts "Suddenly, another cat attacks! What will you do?
1 - Fight
2 - Run away"
gets.chomp == "1" ? fight(health, 1.5) : run(health, 1.5)
puts "You see that the cat has dropped something!"
sleep(3)
puts "You pick it up and are suddently teleported to level 2 of the tower!"
sleep(3)
puts "This part of the tower is mysteriously familiar!"
sleep(3)
puts "In fact, it resembles..."
sleep(3)
puts "A Jeopardy game!"
sleep(3)
puts "You look around in awe as six other contestants (Day Altan Wing, Alaska Young, Katsa, Harry Potter, Mark Watson and Rey KENOBI-not-Skywalker), Jimmy Fallon, and an audience appear."
sleep(6)
puts "Jimmy Fallon explains:"
sleep(2)
puts "You must answer more than 3 of the following 5 questions to advance to the next level. Our category is Movies."
sleep(3)
puts "Good luck!"
sleep(2)
score = 0
puts "What Disney movie was released in 1959?
1 - Snow White
2 - Beauty and the Beast
3 - Cinderella
4 - Sleeping Beauty"
if gets.chomp == "4"
	sleep(1.5)
	score += 1
	puts "Correct answer!"
else
	puts "Wrong answer..."
end
puts "Your score is #{score}."
sleep(1.5)
puts "What is the 2nd highest grossing movie ever, adjusted for inflation?
1 - Avatar
2 - Titanic
3 - Gone with the Wind
4 - The Sound of Music"
if gets.chomp == "1"
	score += 1
	puts "Correct answer!"
else
	puts "Wrong answer..."
end
puts "Your score is #{score}."
sleep(1.5)
puts "What is Pixar's highest grossing movie?
1 - Incredibles
2 - Inside Out
3 - Toy Story 3
4 - Finding Nemo"
if gets.chomp == "3"
	score += 1
	puts "You got the correct answer!"
else
	puts "Wrong answer..."
end
sleep(1.5)
puts "Your score is #{score}."
sleep(1.5)
puts "Which Disney Renaissance movie had the worst rating on Rotten Tomatoes?
1 - Tarzan
2 - Pocahontas
3 - The Rescuers Down Under
4 - The Hunchback of Notre Dame"
if gets.chomp == "2"
	score +=1 
	puts "You got the correct answer!"
else
	puts "Wrong answer..."
end
sleep(1.5)
puts "Your score is #{score}."
sleep(1.5)
puts "And for the final question: What is the name of the very first feature-length that Disney released?
1 -  Cinderella
2 - Fantasia
3 - Snow White and the Seven Dwarves
4 - Pinnochio"
if gets.chomp == "2"
	score +=1 
	puts "You got the correct answer!"
else
	puts "Wrong answer..."
end
sleep(3)
puts "Your final score is #{score}."
if score <= 2
	puts "You did not pass this level..."
	game_over
end
sleep(3)
puts "You passed this level! As the contestants, the audience, and Jimmy Fallon fade away, you are teleported to the third and final level of the tower!"
sleep(3)
puts "You are in now in a completely white room."
sleep(3)
puts "Or, as Harry put it, King's Cross."
sleep(3)
puts "You see Dumbledore walk up to you and say..."
sleep(3)
puts "Congratulations, #{name}! You defeated the cat tower!"
sleep(3)
puts "

   ____  ___)                  ______                           
  (, /   /                    (, /    ) ,        /)    /)       
    /---/  _  __  __            /---(     __ _/_(/   _(/ _      
 ) /   (__(_(_/_)_/_)_(_/_   ) / ____)_(_/ (_(__/ )_(_(_(_(_(_/_
(_/        .-/ .-/   .-/    (_/ (                          .-/  
          (_/ (_/   (_/                                   (_/   
      _____                  /  
     (, /                   /   
       /   _ __  __        /    
   ___/___(/_/ (_/ (_(_/_ o     
 /   /              .-/         
(__ /              (_/          
"
