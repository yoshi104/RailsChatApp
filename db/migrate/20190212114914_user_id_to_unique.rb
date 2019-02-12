class UserIdToUnique < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :user_name, unique: true
    change_column :users, :password, :string, null: false, default: nil
  end
end
