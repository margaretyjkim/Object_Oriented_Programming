class Rover

	def initialize(x, y, d)
		@x = x
		@y = y
		@d = d
	end

	def read_instruction
		user_input = gets.chomp
		if user_input == "m"
			move
		else
			turn(user_input)
		end
	end

	def move
		if @d == "n"
			@y = @y + 1
		elsif @d == "s"
			@y = @y - 1
		elsif @d == "w"
			@x = @x - 1
		else @d == "e"
			@x = @x + 1
		end
	end

	def turn(d)
		if d == "l"
			if @d == "n"
				@d = "w"
			elsif @d == "w"
				@d = "s"
			elsif @d == "s"
				@d = "e"
			else @d == "e"
				@d = "n"
			end
		else #R
			if @d == "n"
				@d = "e"
			elsif @d == "e"
				@d = "s"
			elsif @d == "s"
				@d = "w"
			else @d == "w"
				@d = "n"
			end
		end
	end
end

action = Rover.new(x, y, d)