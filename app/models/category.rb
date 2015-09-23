class Category < ActiveRecord::Base
	has_ancestry

	before_save :cache_ancestry
    
	def cache_ancestry
      self.names_depth_cache = path.map(&:name).join('/')
    end
end
