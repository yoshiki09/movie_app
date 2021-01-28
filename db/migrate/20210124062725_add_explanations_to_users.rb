class AddExplanationsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :explanations, :string
  end
end
