class AddWordsToNick < ActiveRecord::Migration
  def self.up
    add_column :nicks, :words, :integer
  end

  def self.down
    remove_column :nicks, :words
  end
end
