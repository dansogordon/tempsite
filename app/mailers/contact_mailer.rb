class ContactMailer < ActionMailer::Base
  default from: 'NodeBomb <noreply@nodebomb.com>'

  def contact(name, email, message)
    receiver_email = Rails.env == 'development' ? 'gkunwar09@gmail.com' : 'info@nodebomb.com'
    @name = name
    @email = email
    @message = message
    mail(to: receiver_email, subject: 'Contact Message')
  end
end
