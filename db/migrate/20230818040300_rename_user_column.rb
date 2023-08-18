class RenameUserColumn < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :users, :password, :password_digest
  end
end
