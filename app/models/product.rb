class Product < ActiveRecord::Base
	has_many :images
	belongs_to :company
	has_many :details
	has_many :specs, :through => :details

	validates :name, :short_name, :website, :upc, :asin, presence: true

end
