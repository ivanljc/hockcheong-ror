class ContactMailer < ActionMailer::Base
    default :from => "content@hockcheong.com.sg"
    default :to => "ivanljc@gmail.com"
    def new_message(message)
        @message = message
        mail(:subject => "[hockcheong.com.sg] #{message.subject}")
    end
end
