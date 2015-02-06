class AddEndTimeToChallenges < ActiveRecord::Migration

def change
  add_column :challenges, :end_time, :datetime
end

end
