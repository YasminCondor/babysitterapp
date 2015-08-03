class CreateBabysitters < ActiveRecord::Migration
  def change
    create_table :babysitters do |t|
      t.string :name
      t.string :lastname
      t.string :document
      t.date :startdate
      t.integer :maxcount
      t.text :resume
      t.integer :phone
      t.string :email
      t.string :password
      t.references :district, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
