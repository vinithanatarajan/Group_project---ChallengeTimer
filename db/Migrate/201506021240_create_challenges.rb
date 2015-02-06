class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.boolean :completed, default: false
      t.integer :time_completed
      t.timestamps null: false
    end
  end
end
