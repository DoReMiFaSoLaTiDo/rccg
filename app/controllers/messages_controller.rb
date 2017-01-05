class MessagesController < ApplicationController

  before_action :authenticate_user!, :except => [:new, :create]

  def new
    @message = Message.new.tap do |msg|
      msg.office=(receiver)
    end
  end

  def create

  end

  protected
    def approved_params
      params.require(:message).permit(:subject, :body, :sender_email, :sender_phone, :sender_name, :office_id)
    end

    def receiver
      #raise params.require(:message)[:office_name]
      off = Office.ci_find('name', params.require(:message)[:office_name])
      #raise off.inspect
    end
end
