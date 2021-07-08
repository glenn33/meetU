class AddPictureToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :picture, :string
  end
end
