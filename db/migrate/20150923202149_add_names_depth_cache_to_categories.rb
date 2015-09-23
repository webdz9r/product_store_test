class AddNamesDepthCacheToCategories < ActiveRecord::Migration
  def change
  	add_column :categories, :names_depth_cache, :string
  end
end
