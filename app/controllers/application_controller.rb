class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :time_taken

  def time_taken
    @time_taken = Time.now
  end
end
