class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :name, null: false
      t.integer :void, null:false, default:0
      t.timestamps
    end
  end
end
