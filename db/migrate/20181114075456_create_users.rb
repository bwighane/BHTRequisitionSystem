class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstname, null:false
      t.string :lastname, null:false
      t.string :email, null:false 
      t.string :password, null:false
      t.belongs_to :role, foreign_key :true, null:false 
      t.belongs_to :department, foreign_key :true, null:false

      t.timestamps
    end
  end
end
