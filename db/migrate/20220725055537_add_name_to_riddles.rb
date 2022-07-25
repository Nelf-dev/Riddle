class AddNameToRiddles < ActiveRecord::Migration[5.2]
  def change
    add_column :riddles, :name, :string
  end
end
