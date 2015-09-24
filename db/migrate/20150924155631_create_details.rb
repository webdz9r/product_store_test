class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :product_id
      t.integer :spec_id
      t.string :value

      t.timestamps null: false
    end
  end
end
