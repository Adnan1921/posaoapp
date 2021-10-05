namespace :poslovi do
  desc "Dodavanje poslova"
  task seed_posao: :environment  do
    Posao.create([{
      naziv_oglasa: Faker::Job.title,
      opis_oglasa: Faker::Job.field,
      naziv_poslodava: Faker::Company.name,
      email_poslodavca: Faker::Internet.email ,
      rok: Faker::Date.between(from: '2019-09-23', to: '2024-09-25'),
      kategorijeposlova_id: 1
    },
    {
          naziv_oglasa: Faker::Job.title,
          opis_oglasa: Faker::Job.field,
          naziv_poslodava: Faker::Company.name,
          email_poslodavca: Faker::Internet.email ,
          rok: Faker::Date.between(from: '2019-09-23', to: '2024-09-25'),
          kategorijeposlova_id: 2
          
        },
        {
              naziv_oglasa: Faker::Job.title,
              opis_oglasa: Faker::Job.field,
              naziv_poslodava: Faker::Company.name,
              email_poslodavca: Faker::Internet.email ,
              rok: Faker::Date.between(from: '2019-09-23', to: '2024-09-25'),
              kategorijeposlova_id: 1
            },
            {
                  naziv_oglasa: Faker::Job.title,
                  opis_oglasa: Faker::Job.field,
                  naziv_poslodava: Faker::Company.name,
                  email_poslodavca: Faker::Internet.email ,
                  rok: Faker::Date.between(from: '2019-09-23', to: '2024-09-25'),
                  kategorijeposlova_id: 2
                  
                }])

    p "Dodano #{Posao.count} oglasa"
  end
end