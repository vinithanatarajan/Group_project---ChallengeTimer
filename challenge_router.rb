require_relative 'config/application.rb'
require_relative 'app/controllers/challenges_controller.rb'
class ChallengeRouter
  def initialize
      challenges_controller = ChallengesController.new
  end


  def run args
    case args[:command]
    when "start" then challenges_controller.start(args[:id])
    when "end" then challenges_controller.end
    when "list" then challenges_controller.show_list
    else challenges_controller.print_error
    end
  end
end
