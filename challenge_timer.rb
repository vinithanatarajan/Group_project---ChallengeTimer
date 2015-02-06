require_relative 'challenge_router'

challenges_router = ChallengeRouter.new

    puts "Choose a challenge"
    challenges_router.run({command:"list"})
    id = gets.chomp.to_i
    challenges_router.run({command: "start", id:id})
    puts "type end when finished"
    input = gets.chomp
    challenges_router.run({command: "end"})
