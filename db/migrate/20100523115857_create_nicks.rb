class CreateNicks < ActiveRecord::Migration
  def self.up
    create_table :nicks do |t|
      t.string :nick
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :nicks
  end
end
