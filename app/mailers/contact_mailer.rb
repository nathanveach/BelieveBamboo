
class ContactMailer < ActionMailer::Base
  default to: 'believebamboo714@gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: 'Contact@believebamboo.com', subject: 'Contact Form Message')
  end
end
