class AddCreatedUpdated < ActiveRecord::Migration
  def change
    add_column :specifications, :created_at, :datetime
    add_column :specifications, :updated_at, :datetime
  end
end
