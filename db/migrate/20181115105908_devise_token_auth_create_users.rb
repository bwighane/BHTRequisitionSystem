class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.1]
  def change
    
    create_table(:users) do |t|
      ## Required
      t.string :firstname, null:false
      t.string :lastname, null:false
      t.string :provider, :null => false, :default => "email"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.boolean  :allow_password_change, :default => false

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## User Info
      t.string :firstname, null:false
      t.string :lastname, null:false
      t.string :email, null:false
      t.belongs_to :role, foreign_key: true, null:false 
      t.belongs_to :department, foreign_key: true, null:false

      ## Tokens
      t.text :tokens
      t.integer :void, null:false, default:0

      t.timestamps
    end
  end
end
