require_relative 'config/application'
require_relative 'challenges_controller'

challenges_controller = ChallengesController.new

user_input = ARGV
command = user_input.shift
params = user_input.shift

case command
when "start" then challenges_controller.start_timer
when "end" then challenges_controller.end_timer
when "list" then challenges_controller.show_list
when "exit" then break
else challenges_controller.print_error
end