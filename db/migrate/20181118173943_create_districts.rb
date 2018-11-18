class CreateDistricts < ActiveRecord::Migration[5.1]
  def change
    create_table :districts do |t|
      t.string :name
      t.integer :void, null:false, default:0
      t.belongs_to :district_type
      t.timestamps
    end
  end
end
