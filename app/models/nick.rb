class Nick < ActiveRecord::Base
  has_many :logs
  has_many :links
  has_many :eightball_logs

  def wordsies
    log = Log.find(:last, :select => "SUM( LENGTH(text) - LENGTH(REPLACE(text, ' ', ''))+1) AS wordsies", :conditions => "nick_id = '#{self.id}'")
    log.wordsies
  end
  def self.active_last(time_period)
    Nick.where("updated_at > '#{time_period.ago}'").count
  end

end
