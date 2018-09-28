class UserMailer < ApplicationMailer
	default from: "waseemhijodenawaz@yahoo.es"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'waseemhijodenawaz@yahoo.es',
         subject: "A new contact form message from #{name}")
  end
end
