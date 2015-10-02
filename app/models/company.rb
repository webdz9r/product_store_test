class Company < ActiveRecord::Base
	has_many :products
	has_many :events
	has_many :personalities

	def ceo
		personalities.where(position_id: 1).first
	end

end
