puts "                                                 
.oPYo.                     o                     
8.                                               
`boo   .oPYo. oPYo. odYo. o8 odYo. .oPYo. .oPYo. 
.P     .oooo8 8  `' 8' `8  8 8' `8 8    8 Yb..   
8      8    8 8     8   8  8 8   8 8    8   'Yb. 
`YooP' `YooP8 8     8   8  8 8   8 `YooP8 `YooP' 
:.....::.....:..::::..::..:....::..:....8 :.....:
:::::::::::::::::::::::::::::::::::::ooP'.:::::::
:::::::::::::::::::::::::::::::::::::...:::::::::
                                                         
.oPYo.        8               8          o               
8    8        8               8          8               
8      .oPYo. 8 .oPYo. o    o 8 .oPYo.  o8P .oPYo. oPYo. 
8      .oooo8 8 8    ' 8    8 8 .oooo8   8  8    8 8  `' 
8    8 8    8 8 8    . 8    8 8 8    8   8  8    8 8     
`YooP' `YooP8 8 `YooP' `YooP' 8 `YooP8   8  `YooP' 8     
:.....::.....:..:.....::.....:..:.....:::..::.....:..::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"
puts "Enter daily pageviews:"
pageviews = gets.chomp.to_f
puts "Enter daily earnings:"
earnings = gets.chomp.to_f
puts "Enter current number of users:"
users = gets.chomp.to_f

cost = 178.to_f

days = 260_000 / earnings
years = days / 365

earnings_per_pageview = earnings / pageviews

pageviews_per_user = pageviews / users

pageviews_needed = cost / earnings_per_pageview

users_needed = pageviews_needed / pageviews_per_user

schools_needed = users_needed/1000

puts "At this rate, it will take you #{ days.to_i } days, or #{years.to_i} years, to pay off the cost of Harvard."
puts "You will need #{pageviews_needed.to_i} pageviews to make $#{cost} a day."
puts "You will need #{users_needed.to_i} users to make $#{cost} a day."
puts "You will need #{schools_needed.to_i} schools to make $#{cost} a day."
# pageviews_per_user = pageviews / users
# puts "At this rate, it will take " + (cost/earnings).to_s + " days to pay off Harvard."
# puts earnings_per_pageview * users