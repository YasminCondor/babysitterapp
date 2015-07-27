class CreateBabysitters < ActiveRecord::Migration
  def change
    create_table :babysitters do |t|
      t.string :name
      t.string :lastname
      t.integer :document
      t.date :startdate
      t.integer :maxcount
      t.text :resume
      t.integer :phone
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
