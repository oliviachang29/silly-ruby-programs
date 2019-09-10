first = 1
second = 2
sum = 0

until second > 4_000_000  do
   if second % 2 == 0
   	sum += second
   end
   n = first # Need to temporarily set this number
   first = second # Set the second to last term to the last term
   second += n # Add the second to last term to the last term
end

puts "Sum is #{sum}"