class OrangeTree
	def initialize
		puts "A new orange tree has germinated!"
		@height = 0
		@age = 0
		@dead = false
		@orange_count = 0
	end

	def height
		puts "The tree is #{@height} feet tall"
	end

	def one_year_passes
		puts "The tree has lost the remaining #{@orange_count} oranges"
		@oranges = 0
		@age += 1
		grow
		oranges
		if dead?
			puts 'The poor tree has died'
			exit
		end
		puts "The tree has aged one more year and is now #{@age} years old"
		self.count_the_oranges
	end

	def count_the_oranges
		puts "The tree has #{@orange_count} oranges!"
	end

	def pick_an_orange
		if @orange_count > 0
			@orange_count -= 1
			puts "You pick and eat a delicious orange! There are now #{@orange_count} oranges remaining!"
		else
			puts "There are no more oranges to pick"
		end
	end

	private

	def dead?
		@chances = []
		@chance = @age / 10 / 100.to_f
		if @age > 60
				(@age / 5).times do
						@chances << rand(1..@age)
						@max = @chances.max
				end
				if @max > @age - (@age * @chance)
						return true
					else 
						return false
					end
		else 
				return false
		end
	end

  def grow
		@height += 0.5
	end	

	def oranges
		@chances = []
		@chance = @age / 10
		if @age > 4
			(@age / 2).times do
				@chances << rand(1..@age)
				@max = @chances.max
				@orange_count = @max *= @chance
			end
		end
	end

end
