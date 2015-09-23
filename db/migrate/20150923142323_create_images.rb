class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :role
      t.string :name
      t.integer :product_id
      t.timestamps
    end
  end
end
