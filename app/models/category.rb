class Category < ActiveRecord::Base
	has_ancestry
	
	has_many :products

	before_save :cache_ancestry
	has_and_belongs_to_many :specs
    
	def cache_ancestry
      self.names_depth_cache = path.map(&:name).join('/')
    end
end
