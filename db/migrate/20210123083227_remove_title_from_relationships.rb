class RemoveTitleFromRelationships < ActiveRecord::Migration[6.0]
  def change
    remove_column :relationships, :title, :string
  end
end
