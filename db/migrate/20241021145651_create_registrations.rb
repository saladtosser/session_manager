class CreateRegistrations < ActiveRecord::Migration[7.2]
  def change
    create_table :registrations do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.string :college

      t.timestamps
    end
  end
end
