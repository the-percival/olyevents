class ContactFormController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      Contact.new_message(@message).deliver
      redirect_to(root_path, :notice => "Thanks for the email! You will hear from us soon.")
    else
      flash.now.alert = "Dude, fill in all the values."
      render :new
    end
  end
end