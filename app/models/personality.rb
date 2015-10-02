class Personality < ActiveRecord::Base
	has_and_belongs_to_many :events
	belongs_to :position
	belongs_to :company
end
