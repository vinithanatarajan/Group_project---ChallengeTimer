require_relative 'challenges_controller.rb'
require 'time'

class ChallengeModel < ActiveRecord::Base

  def to_s
  end

  def start_timer
    update(start_time: Time.now)
  end

  def end_timer
    update(time_completed: Time.now)
  end
end
