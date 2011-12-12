class AddAccessBlockedUsers < ActiveRecord::Migration
  def up
    add_column :users, :access_blocked, :boolean, :default => false
  end

  def down
    remove_column :users, :access_blocked
  end
end
