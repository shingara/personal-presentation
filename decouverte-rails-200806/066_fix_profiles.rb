class FixProfiles < ActiveRecord::Migration
  def self.up
    create_table :products do |p|
      p.string :titre, :limit => 100
    end

    remove_column :users, :profile_id
    add_column :users, :profile_id, :integer
    admin_id = Profile.find_by_label('admin').id
    User.update_all("profile_id = #{admin_id}")
  end

  def self.down
    drop_table :products

    remove_column :users, :profile_id
    add_column :users, :profile_id, :integer, :default => 1
  end
end
