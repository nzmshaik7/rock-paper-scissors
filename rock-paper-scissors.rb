
#Rock-Paper-Scissors

class Game
	attr_reader :player, :computer, :options_hash_map
	
	def initialize(player)
		@player = player
		@computer = computer
		@options_hash_map = {:paper => :rock, :rock => :scissors, :scissors => :paper}
	end
	
	def result
		if player.choice == computer.choice
			return "Tie"
		elsif options_hash_map[player.choice] == computer.choice
			return "Congratulations #{player.name}, you win"
		else
			return "Oops #{player.name}, you lost"
		end
	end
end

class Player
	attr_reader :name :choice
	
	def initialize(name)
		@name = name
		@choice
	end
	
	def save_choice(input)
		self.choice = input.to_sym
	end
	
	private 
	attr_writer :choice
end

class Computer
	attr_reader :choice
	
	def initialize
		@choices = [:rock, :paper, :scissors]
		pick
	end
	
	def pick
		self.choice = @choices.sample
	end
	
	private
	
	attr_reader :choices
	attr_writer :choice

end