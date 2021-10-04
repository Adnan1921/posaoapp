class PosloviMailer < ApplicationMailer
  default from: 'adnan.biber2@gmail.com'

  def uspjesna_email
    @posao = params[:posao]
    mail(to: @posao.email_poslodavca, subject: 'Welcome to My Awesome Site')
  end
end
