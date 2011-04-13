class NicksController < ApplicationController
  # GET /nicks
  # GET /nicks.xml
  def index
    @nicks = Nick.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /nicks/1
  # GET /nicks/1.xml
  def show
    @nick = Nick.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end
end
