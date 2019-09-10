# Variables
health = 100

# Functions
require 'io/console'                                                                                                       
def continue_story                                                                                                               
  puts "Press any key to continue."                                                                                                    
  STDIN.getch                                                                                                              
  print "\n" # extra space to overwrite in case next sentence is short                                                                                                              
end                                                                                                                        

def game_over
	abort("
   _   _  ___    _    ____ _   _  __ 
  (_/_(_(_// (__(/_  (_) (/___(/_/ (_
 .-/                                 
(_/                                  
		")
end

def fight(health, x)
	sleep(1)
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
	puts "You sustained some damage, but continue on."
	continue_story
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
sleep(1)
continue_story
puts "You are a cat. What is your name?"
name = gets.chomp
puts "#{name} cautiously approaches the cat tower." 
continue_story
def locked_door
	puts "The door to the tower is locked. What do you do?
	1 - Try to open it anyway
	2 - Meow for help"
	if gets.chomp == "2"
		puts "The door creaks open. There is no one behind it."
		continue_story
	else
		puts "Nothing happens."
		continue_story
		locked_door
	end
end
locked_door
puts "The first floor of the tower is covered with cobwebs and dust."
continue_story
puts "You walk a few steps, but not before you see writing on the floor." 
puts "          
  /)                     
 (/_  _ _   _ _   __   _ 
/_) _(/_(_(/ (_(_/ (__(/_
                 
"
continue_story
puts "#{name} continues walking."
continue_story
puts "Suddenly, a cat jumps out at #{name}! What will you do?
1 - Fight
2 - Run away"
gets.chomp == "1" ? fight(health, 1) : run(health, 1)
puts "You continue on."
continue_story
def bastet_altar
	puts "Ahead of you stands an altar to Bastet, the Egyptian God of cats. What do you do?
	1 - Approach it
	2 - Retreat back
	3 - Walk around it"
	if gets.chomp == "1"
		puts "You approach it. Nothing seems to happen..."
		sleep(1)
		choice = rand(0..1)
		if choice == 0
			print "until you fall into a trapdoor!"
			sleep(0.5)
			puts "The room you fall into is filled with venomous snakes!"
			game_over
		else 
			puts "Phew!"
			continue_story
		end
	elsif gets.chomp == "2"
		puts "Nope, you can't go back."
		continue_story
		bastet_altar
	else
		puts "You walk around it. Nothing seems to happen..."
		sleep(1)
		choice = rand(0..12)
		if choice <= 2
			print "until you fall into a trapdoor!"
			sleep(0.5)
			puts "The room you fall into is filled with pandas, but you're stuck!"
			game_over
		else 
			puts "Phew!"
			continue_story
		end
	end
end
bastet_altar
puts "Suddenly, another cat attacks! What will you do?
1 - Fight
2 - Run away"
gets.chomp == "1" ? fight(health, 1.5) : run(health, 1.5)
puts "You see that the cat has dropped something!"
continue_story
puts "You pick it up, and see that it is a winged key!"



