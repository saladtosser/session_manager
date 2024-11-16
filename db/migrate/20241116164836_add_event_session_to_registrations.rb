class AddEventSessionToRegistrations < ActiveRecord::Migration[7.2]
  def change
    add_column :registrations, :event_session_id, :integer
  end
end
