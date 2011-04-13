class Log < ActiveRecord::Base
  belongs_to :nick

  def self.random
    Log.find_by_id(rand(Log.count)) 
  end
  
  def self.hash_by_month
    Log.select(" date_trunc('month', logs.created_at), count(logs.id)").group("date_trunc('month', logs.created_at)").order("date_trunc('month', logs.created_at)").count
  end

end
