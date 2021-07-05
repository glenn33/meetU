class AddOthersColumnToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :date, :date
    add_column :events, :address, :string
    add_column :events, :title, :string
    add_column :events, :description, :text
    add_column :events, :pictures, :string
    add_column :events, :premium, :boolean
  end
end
