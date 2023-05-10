class OnePlusDetails < ActiveRecord::Migration
  def change
    create_table :specification do |t|
      t.string :model_name
      t.text   :variants
      t.text   :launch_date
      t.string :price
      t.text   :network
      t.text   :body
      t.text   :display
      t.string :os
      t.text   :processor
      t.text   :memory
      t.text   :camera
      t.text   :sound
      t.text   :security
      t.text   :battery
      t.text   :connection
      t.integer :rating
      t.text   :description
    end
  end
end
