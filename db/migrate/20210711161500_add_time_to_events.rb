class AddTimeToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :hour, :datetime
  end
end
