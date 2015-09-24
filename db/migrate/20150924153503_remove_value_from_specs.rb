class RemoveValueFromSpecs < ActiveRecord::Migration
  def change
  	remove_column :specs, :value
  	drop_table :categories_specs
  end
end
