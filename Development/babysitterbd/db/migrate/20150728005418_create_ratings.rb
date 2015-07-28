class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :service, index: true, foreign_key: true
      t.integer :value

      t.timestamps null: false
    end
  end
end
