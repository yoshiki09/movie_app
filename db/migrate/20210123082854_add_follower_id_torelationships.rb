class AddFollowerIdTorelationships < ActiveRecord::Migration[6.0]
  def change
    add_column :relationships, :follower_id, :integer
  end
end
