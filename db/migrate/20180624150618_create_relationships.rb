class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.references :liker
      t.references :likee

      t.timestamps
    end
  end
end
