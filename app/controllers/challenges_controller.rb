require_relative '../../config/application'

class ChallengesController

	def start id
			@challenge = Challenge.find(id)
			@challenge.start_timer
	end

	def end
		@challenge.end_timer
	end

	def show_list
		puts Challenge.all
	end

	def show_challenge
		puts @challenge
	end

	def print_error
		puts "Error , Chur bro too meke "
	end

end
