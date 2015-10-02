class Spec < ActiveRecord::Base
	has_many :details
	has_many :products, :through => :details
	has_and_belongs_to_many :categories
end
