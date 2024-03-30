class AddUsersUsernameToDogs < ActiveRecord::Migration[7.1]
  def change
    add_column :dogs, :users_username, :string
  end
end
