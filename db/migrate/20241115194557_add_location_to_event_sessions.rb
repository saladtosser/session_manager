class AddLocationToEventSessions < ActiveRecord::Migration[7.2]
  def change
    add_column :event_sessions, :location, :string
  end
end
