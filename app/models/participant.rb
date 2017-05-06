class Participant < ActiveRecord::Base
	belongs_to :event , class_name: "Event", foreign_key: "event_id"
	 validates :event_id , presence: true

  
end
