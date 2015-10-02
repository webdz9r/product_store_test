class EventsPersonalities < ActiveRecord::Migration
  def change
  	create_table :events_personalities, id: false do |t|
      t.belongs_to :personality, index: true
      t.belongs_to :event, index: true
    end
  end
end
