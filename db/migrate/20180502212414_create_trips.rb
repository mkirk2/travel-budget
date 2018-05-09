class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :name
      t.integer :budget
      t.date :start_date
      t.date :end_date
      t.integer :daily_budget
      t.integer :total_days
      t.integer :spend_count, :default => 0
    end
  end
end
