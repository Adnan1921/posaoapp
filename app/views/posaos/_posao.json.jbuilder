json.extract! posao, :id, :naziv_oglasa, :opis_oglasa, :naziv_poslodava, :email_poslodavca, :created_at, :updated_at
json.url posao_url(posao, format: :json)
