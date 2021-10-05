class Prijava < ApplicationRecord
  belongs_to :posao
  
  mount_uploader :dokument
  validates :broj_telefona, numericality: true
  validates :ime_prezime, presence: true
  validates :datum_rodjenja, presence: true
  validates :email, presence: true
  validates :adresa, presence: true

  VALID_EMAIL_REGEX= /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

      validates :email , presence: true,
      format:{with:VALID_EMAIL_REGEX,multiline:true}
end
