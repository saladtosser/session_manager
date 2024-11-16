class AddDateToEventSessions < ActiveRecord::Migration[7.2]
  def change
    add_column :event_sessions, :date, :date
  end
end
