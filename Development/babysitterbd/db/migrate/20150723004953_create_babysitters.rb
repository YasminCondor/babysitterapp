class CreateBabysitters < ActiveRecord::Migration
  def change
    create_table :babysitters do |t|
      t.text :phonenumber
      t.text :firstname
      t.text :lastname
      t.text :document
      t.datetime :birthdate
      t.text :district
      t.text :address
      t.datetime :startdate
      t.text :resume
      t.integer :maxcountchildren

      t.timestamps null: false
    end
  end
end
