class AddDefaultToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :default, :string
  end
end
