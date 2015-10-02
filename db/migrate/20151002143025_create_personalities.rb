class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.string :name
      t.integer :position_id
      t.integer :company_id
      t.text :short_summary
      t.string :website
      t.string :twitter
      t.string :instagram
      t.string :linked_in
      t.string :youtube
      t.string :facebook

      t.timestamps null: false
    end
  end
end
