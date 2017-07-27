def fizz_buzz start_num, end_num
	
	num = start_num

	fizz_count = 0
	buzz_count = 0
	fizzbuzz_count = 0
	lucky_count = 0
	int_count = 0

	while num <= end_num 
		str_num = num.to_s
		if str_num.include?('3')
			puts 'lucky'
			lucky_count = lucky_count + 1
		else
			if num % 15 == 0
				puts 'fizzbuzz'
				fizzbuzz_count = fizzbuzz_count + 1
			elsif num % 5 == 0
				puts 'buzz'
				buzz_count = buzz_count + 1
			elsif num % 3 == 0
				puts 'fizz'
				fizz_count = fizz_count + 1
			else
				puts num
				int_count = int_count + 1
			end	
		end
		num = num + 1
	end
	
	puts
	puts 'Totals:'
	puts "Fizz: #{fizz_count}"
	puts "Buzz: #{buzz_count}"
	puts "Fizzbuzz: #{fizzbuzz_count}"
	puts "Lucky: #{lucky_count}"
	puts "Integer: #{int_count}"
end

while true
	puts 'Enter Start Point (Integer)'
	start_num = gets.chomp.to_i
	puts
	puts 'Enter End Point (Integer)'
	end_num = gets.chomp.to_i
	puts

	if start_num >= end_num
		puts 'ERROR: Please make sure the Start Point is less than the End Point'
	else
		break
	end
end

fizz_buzz start_num, end_num
