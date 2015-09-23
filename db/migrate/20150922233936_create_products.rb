class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :short_name
      t.text :short_summary
      t.string :website
      t.datetime :discontinued
      t.string :upc
      t.string :asin
      t.datetime :launch_at
      t.datetime :embargo_at

      t.timestamps null: false
    end
  end
end
