class PosloviMailer < ApplicationMailer
  default from: 'adnan.biber2@gmail.com'

  def uspjesna_email
    @prijava = params[:prijava]
    mail(to: @prijava.email, subject: 'Prijava uspješna')
  end
end
