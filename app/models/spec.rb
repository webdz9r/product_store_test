class Spec < ActiveRecord::Base
	has_many :details
	has_many :products, :through => :details
	has_and_belongs_to_many :categories

	after_destroy :remove_details_from_products


  private

  	def remove_details_from_products
  		Detail.where(spec_id: self.id).delete_all
  	end

end
