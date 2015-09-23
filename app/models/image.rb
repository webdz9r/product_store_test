class Image < ActiveRecord::Base
	has_attached_file :file, styles: { medium: "300x300>", square: "200x200#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/

  	belongs_to :product

  	validates :product_id, :file, presence: true

  	attr_accessor :product_name

  	scope :unique_role, -> { group(:role) }
  	
end
