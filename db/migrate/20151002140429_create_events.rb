class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :company_id
      t.string :general_hashtag
      t.string :internal_hashtag
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
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
