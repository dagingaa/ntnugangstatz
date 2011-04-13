class NicksController < ApplicationController
  # GET /nicks
  # GET /nicks.xml
  def index
    @nicks = Nick.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nicks }
    end
  end

  # GET /nicks/1
  # GET /nicks/1.xml
  def show
    @nick = Nick.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nick }
    end
  end
end
