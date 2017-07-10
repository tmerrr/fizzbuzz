def fizz_buzz start_num, end_num
	
	arr = []
	num = start_num

	while num <= end_num 
		arr.push num		
		num = num + 1
	end
	
	arr.each do |n|

		lucky_check = n
		
		while lucky_check > 0
			if lucky_check % 10 == 3
				lucky = true
			end
			lucky_check = lucky_check / 10
		end
			
		if lucky == true
			puts 'lucky'
		else
			if n % 15 == 0
				puts 'fizzbuzz'
			elsif n % 5 == 0
				puts 'buzz'
			elsif n % 3 == 0
				puts 'fizz'
			else
				puts n
			end	
		end
		
	end
end

while true

	puts 'Enter Start Point (Integer)'
	puts
	start_num = gets.chomp.to_i
	puts
	puts 'Enter End Point (Integer)'
	puts
	end_num = gets.chomp.to_i

	if start_num >= end_num
		puts
		puts 'ERROR: Please make sure the Start Point is less than the End Point'
		puts
	else
		break
	end

end

puts
fizz_buzz start_num, end_num