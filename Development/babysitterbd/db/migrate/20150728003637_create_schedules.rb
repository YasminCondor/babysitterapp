class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :date
      t.boolean :state
      t.references :babysitter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
