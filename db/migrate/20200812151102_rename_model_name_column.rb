class RenameModelNameColumn < ActiveRecord::Migration
  def change
    rename_column :specifications, :model_name, :phone_name
  end
end
