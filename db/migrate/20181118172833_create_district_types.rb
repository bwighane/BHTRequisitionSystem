class CreateDistrictTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :district_types do |t|
      t.string :name
      t.integer :void, null:false, default:0
      t.timestamps
    end
  end
end
