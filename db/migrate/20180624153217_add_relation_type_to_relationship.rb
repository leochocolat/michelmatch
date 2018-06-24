class AddRelationTypeToRelationship < ActiveRecord::Migration[5.1]
  def change
    add_column :relationships, :relationType, :boolean
  end
end
