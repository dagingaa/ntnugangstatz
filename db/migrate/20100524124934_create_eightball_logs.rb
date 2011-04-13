class CreateEightballLogs < ActiveRecord::Migration
  def self.up
    create_table :eightball_logs do |t|
      t.integer :nick_id
      t.string :query
      t.string :answer
      t.datetime :created_at
    end
  end

  def self.down
    drop_table :eightball_logs
  end
end
