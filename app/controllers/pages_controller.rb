class PagesController < ApplicationController
#  def show
#    render template: "pages/#{params[:page]}"
#  end
  skip_before_action :authenticate_user!, :only => [:index, :about, :ministries]
  
  def index
    @ongoings = Event.where((:start_date..:end_date).include?(Date.current))
    @upcomings = Event.upcoming(5)
    @meetings = Event.meeting(5)

    # raise @upcomings.inspect
    # render
  end

  def about
    # render
  end

  def ministries
    # render
  end

end
