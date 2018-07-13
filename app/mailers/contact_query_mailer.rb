class ContactQueryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_query_mailer.new_contact_query.subject
  #
  def new_contact_query(form_message)
    @form_message = form_message  
# Frst will add the logo attachement      
# Then we capture the email of the persone that contacted us from the "form_message.email" (user's email who contacted us)
# Finally we add the email's subject we want our contacter to see on the email we'll send to them 
      attachments.inline["Solart-logo.jpg"] = File.read("#{Rails.root}/app/assets/images/Solart-logo.jpg")    
      mail(to: @form_message.email, 
            subject: 'Thank you for contacting Solart') #reading the subject of the email
           
  end
end
