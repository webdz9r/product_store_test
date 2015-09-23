class Product < ActiveRecord::Base
	has_many :images
	belongs_to :company

	validates :name, :short_name, :website, :upc, :asin, presence: true

end
