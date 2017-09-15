class FizzBuzz
	def initialize
		get_range
	end

	def get_num
		num = gets.chomp
		puts
		unless num == num.to_i.to_s
			puts "Please enter a valid number."
			get_num
		else
			num.to_i
		end
	end

	def get_range
		puts "Please enter your start point."
		start_num = get_num
		puts "Now, please enter your end point."
		end_num = get_num
		start_num <= end_num ? get_output(start_num, end_num) : get_output(end_num, start_num)
	end

	def logic(num)
		return num if num == 0
		return 'lucky' if num.to_s.include?('3')
		return 'fizzbuzz' if num % 15 == 0
		return 'buzz' if num % 5 == 0
		return 'fizz' if num % 3 == 0
		num
	end

	def get_output(start_num, end_num)
		result = (start_num..end_num).to_a.map! { |x| logic(x) }
		puts result.join(', ')
		puts "fizz: #{result.count('fizz')}"
		puts "buzz: #{result.count('buzz')}"
		puts "fizzbuzz: #{result.count('fizzbuzz')}"
		puts "lucky: #{result.count('lucky')}"
		puts "integer: #{result.select {|i| i.class != String}.size}"
	end

end

FizzBuzz.new