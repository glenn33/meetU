class AddPictureTwoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile_url, :string
  end
end
