class AddBrandName < ActiveRecord::Migration
  def change
    add_column :specifications , :brand_name, :string
  end
end
