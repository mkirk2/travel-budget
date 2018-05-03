class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.integer :budget
      t.date :start_date
      t.date :end_date
    end
  end
end
