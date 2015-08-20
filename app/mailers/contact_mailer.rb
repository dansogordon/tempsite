class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: 'gkunwar09@gmail.com', subject: 'Contact Message')
  end
end
