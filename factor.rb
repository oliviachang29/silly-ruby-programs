puts "Calculate the factors of:"
startTime = Time.now # Get current time (before calculation starts)
n = gets.to_i
i = 1
puts "Factors:"
until i > (n / 2) do
	if n % i == 0
		puts i
	end
	i += 1
end
endTime = Time.now # Get current time (after calculation starts)
puts "Calculation done in " + (endTime - startTime).to_s + " seconds."