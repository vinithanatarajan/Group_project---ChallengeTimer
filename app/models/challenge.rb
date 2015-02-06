
require 'time'
class Challenge < ActiveRecord::Base
  def to_s
    "#{name} #{description} #{time_completed}"
  end

  def start_timer
    update(start_time: Time.now)
  end

  def end_timer
    update(end_time: Time.now)
  end

  def total_time
    time_elapsed = (end_time - start_time).round
    update(time_completed: time_elapsed)
  end

end
