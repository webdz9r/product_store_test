class CategoriesSpecs < ActiveRecord::Migration
  def change
  	create_table :categories_specs, id: false do |t|
      t.belongs_to :spec, index: true
      t.belongs_to :category, index: true
    end
  end
end
