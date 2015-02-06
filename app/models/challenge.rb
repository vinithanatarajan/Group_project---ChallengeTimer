
require 'time'
class Challenge < ActiveRecord::Base
  def to_s
    "#{id}. #{name} #{description} #{formatted_time}"
  end

  def formatted_time
     "Time taken: #{time_completed}s" if time_completed
    end

  def start_timer
    update(start_time: Time.now)
  end

  def end_timer
    update(end_time: Time.now)
    complete!
  end

  def complete!
    time_elapsed = (end_time - start_time).round
    update(time_completed: time_elapsed)
  end

end
