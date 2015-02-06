require_relative 'challenge_router'

challenges_router = ChallengeRouter.new
loop do
    puts "Choose a challenge or exit"
    challenges_router.run({command:"list"})
    id = gets.chomp
  if id == "exit"
    break
  elsif id.to_i == 0
    challenges_router.run()
  else
    challenges_router.run({command: "start", id:id})
    puts "press enter when finished"
    gets
      challenges_router.run({command: "end"})
      challenges_router.run({command:"completed"})
  end
end
