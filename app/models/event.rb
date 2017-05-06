class Event < ActiveRecord::Base

  belongs_to :user
has_many :participants , class_name: "Participant",dependent: :destroy



  attr_accessor :start_time
end

