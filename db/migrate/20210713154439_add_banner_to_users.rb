class AddBannerToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :banner_picture, :string
  end
end
