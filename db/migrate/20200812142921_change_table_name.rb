class ChangeTableName < ActiveRecord::Migration
  def self.up
    rename_table :specification, :specifications
  end

  def self.down
    rename_table :specifications, :specification
  end
  
end
