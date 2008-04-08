class FixProfiles < ActiveRecord::Migration
  def self.up
    remove_column :users, :profile_id
    add_column :users, :profile_id, :integer
    admin_id = Profile.find_by_label('admin').id
    User.update_all("profile_id = #{admin_id}")
  end

  def self.down
    remove_column :users, :profile_id
    add_column :users, :profile_id, :integer, :default => 1
  end
end
