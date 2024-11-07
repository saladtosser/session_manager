class AddUsernameToAdmins < ActiveRecord::Migration[7.2]
  def change
    add_column :admins, :username, :string
  end
end
