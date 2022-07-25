class AddIdToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :user_id, :integer
    add_column :scores, :riddle_id, :integer
  end
end
