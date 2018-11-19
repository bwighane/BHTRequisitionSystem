class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :body
      t.string :path
      t.integer :void, null:false, default:0
      t.belongs_to :user

      t.timestamps
    end
  end
end
