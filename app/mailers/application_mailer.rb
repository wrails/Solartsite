class ApplicationMailer < ActionMailer::Base

  	default from: 'Solart <solarthelp@gmail.com>'
	default bcc: 'solarthelp@gmail.com' # (blind carbon copy) for testing. Leave it in production if needed
	#layout 'mailer'
end
