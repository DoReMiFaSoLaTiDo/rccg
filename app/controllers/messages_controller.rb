class MessagesController < ApplicationController

  before_action :authenticate_user!, :except => [:new, :create, :destroy]

  def new
    @message = Message.new.tap do |msg|
      msg.office=(receiver)
      msg.message_type = params[:message_type].to_i
    end
    respond_to do |format|
      format.html
      format.js
    end

  end

  def create

  end

  protected
    def approved_params
      params.require(:message).permit(:subject, :body, :sender_email, :sender_phone, :sender_name, :office_id)
    end

    def receiver
      # raise params.inspect
      off = Office.ci_find('name', params[:office_name])
      # raise off.inspect
    end
end
