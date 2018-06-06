class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :formation, :string
    add_column :users, :description, :text
    add_column :users, :image, :string
  end
end
