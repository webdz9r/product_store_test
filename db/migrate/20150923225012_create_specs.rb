class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.string :name
      t.string :promo_title
      t.string :value

      t.timestamps
    end
  end
end
