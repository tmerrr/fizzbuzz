def fizz_buzz start_num, end_num
	
	arr = []
	num = start_num
	
	fizz_count = 0
	buzz_count = 0
	fizzbuzz_count = 0
	lucky_count = 0
	int_count = 0

	while num <= end_num 
		arr.push num		
		num = num + 1
	end
	
	arr.each do |n|

		lucky_check = n
		
		while lucky_check > 0
			if lucky_check % 10 == 3
				three = true
			end
			lucky_check = lucky_check / 10
		end
			
		if three == true
			puts 'lucky'
			lucky_count = lucky_count + 1
		else
			if n % 15 == 0
				puts 'fizzbuzz'
				fizzbuzz_count = fizzbuzz_count + 1
			elsif n % 5 == 0
				puts 'buzz'
				buzz_count = buzz_count + 1
			elsif n % 3 == 0
				puts 'fizz'
				fizz_count = fizz_count + 1
			else
				puts n
				int_count = int_count + 1
			end	
		end
		
	end
	
	puts
	puts 'Totals:'
	puts 'Fizz: ' + fizz_count.to_s
	puts 'Buzz: ' + buzz_count.to_s
	puts 'Fizzbuzz: ' + fizzbuzz_count.to_s
	puts 'Lucky: ' + lucky_count.to_s
	puts 'Integer ' + int_count.to_s
	
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