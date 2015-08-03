class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :client, index: true, foreign_key: true
      t.references :babysitter, index: true, foreign_key: true
      t.references :schedule, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
