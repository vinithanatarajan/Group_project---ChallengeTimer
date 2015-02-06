require_relative 'config/application.rb'
require_relative 'app/controllers/challenges_controller.rb'

challenges_controller = ChallengesController.new

user_input = ARGV
command = user_input.shift
params = user_input.shift

case command
when "start" then challenges_controller.start_timer(params)
when "end" then challenges_controller.end_timer
when "list" then challenges_controller.show_list
when "exit" then break
else challenges_controller.print_error
end