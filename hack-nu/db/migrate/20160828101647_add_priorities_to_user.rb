class AddPrioritiesToUser < ActiveRecord::Migration
  def change
    add_column :users, :shop, :integer
    add_column :users, :bar, :integer
    add_column :users, :gift, :integer
    add_column :users, :education, :integer
    add_column :users, :health, :integer
    add_column :users, :services, :integer
    add_column :users, :transport, :integer
    add_column :users, :leisure, :integer
    add_column :users, :electronics, :integer
    add_column :users, :travel, :integer
    add_column :users, :dressing, :integer
  end
end
