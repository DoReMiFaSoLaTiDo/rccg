class PagesController < ApplicationController
#  def show
#    render template: "pages/#{params[:page]}"
#  end

  def index
    @ongoings = Event.where((:start_date..:end_date).invclude?(Date.now))
    @upcomings = Event.upcoming
    @meetings = Event.meeting
    # render
  end

  def about
    # render
  end

  def ministries
    # render
  end

end
