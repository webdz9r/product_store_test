class Spec < ActiveRecord::Base
	has_many :details
	has_many :products, :through => :details
end
