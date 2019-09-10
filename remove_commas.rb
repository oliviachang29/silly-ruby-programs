puts "Input text: "
text = gets.chomp
text.gsub! ", ", "\n"
puts text