class Contact < ActionMailer::Base
  default to: "heybuddy@olylab.com"
  default from: "heybuddy@olylab.com"

  def new_message(message)
    @message = message
    mail(:subject => "[olyevents] #{message.subject} from #{message.name}")
  end
end
