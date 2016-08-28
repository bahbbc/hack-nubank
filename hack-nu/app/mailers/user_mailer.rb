class UserMailer < ApplicationMailer
	default from: 'abarbosa0494@gmail.com'
 
	def welcome_email(account_datum)
		@account_datum = account_datum
		@url  = 'https://www.google.com.br'
		mail(to: 'abarbosa0494@gmail.com', subject: 'Você tá vacilando ):')
	end
end
