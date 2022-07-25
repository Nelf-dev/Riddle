class AddUserIdToRiddles < ActiveRecord::Migration[5.2]
  def change
    add_column :riddles, :user_id, :integer
  end
end
