class CreateProfils < ActiveRecord::Migration[5.1]
  def change
    create_table :profils do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :formation
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
