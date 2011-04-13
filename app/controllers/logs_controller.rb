class LogsController < ApplicationController
  # GET /logs
  # GET /logs.xml
  def index
    @time_taken = Time.now
    
    @links = Link.order('id DESC').limit(10)
    @total_count = Log.count
    @sorted_g_logs = Log.group(:nick_id).order("count DESC").select('COUNT(*) AS count, nick_id')
    @nicks = Nick.all
    @eightball = EightballLog.order("id DESC")
    @eightball_limit = @eightball.limit(10)
  end

  def links
	@links_all = Link.find(:all)
        @links = []
	@ids = []
        @links_all.each do |l|
        	if l.link["youtube"]
			@links << l
		end

	end
  end
  def show
    @logs = Log.find(:all, :order => "id DESC", :limit => 10000)
  end
end
