class ContactController < ApplicationController
def new
    @message = Message.new
end

def create
    @message = Message.new(params[:message])
    if @message.valid?

        #Save Email Message into DB
        @email = Email.new(name: @message.name, email: @message.email, subject: @message.subject, body: @message.body, tag_id: @message.tag_id)
        @email.save

        ContactMailer.new_message(@message).deliver
        redirect_to(root_path, :notice => "Message was successfully sent.")
    else
        flash.now.alert = "Please fill all fields."
        render :new
    end
end
end
