class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :ticker
      t.date :founded_date
      t.string :hq_location
      t.text :short_summary
      t.string :website
      t.string :twitter
      t.string :instagram
      t.string :linkedin
      t.string :youtube
      t.string :facebook
      t.timestamps
    end
  end
end
