class AddStartTimeToChallenges < ActiveRecord::Migration

def change
  add_column :challenges, :start_time, :datetime
end

end
