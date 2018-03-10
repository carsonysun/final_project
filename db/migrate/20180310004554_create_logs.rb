class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :habit_id
      t.date :date
      t.string :time_of_day
      t.string :rating_of_the_day

      t.timestamps

    end
  end
end
