class Registration < ApplicationRecord
  belongs_to :event_session
 

  #add validation when/as needed
  validates :event_session_id, presence: true

end

