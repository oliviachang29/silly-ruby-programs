sum = 0
for i in 0..999
   if i % 3 == 0
   	sum += i
   elsif i % 5 == 0
   	sum += i
   end
end

puts "Sum is #{sum}" 