namespace :poslovi do
  desc "Seeds Posao"
  task seed_posao: :environment  do
    Posao.create([{
      naziv_oglasa: Faker::Job.title,
      opis_oglasa: Faker::Job.field,
      naziv_poslodava: Faker::Company.name,
      email_poslodavca: Faker::Internet.email ,
      rok: Faker::Date.between(from: '2019-09-23', to: '2024-09-25')
    },
    {
          naziv_oglasa: Faker::Job.title,
          opis_oglasa: Faker::Job.field,
          naziv_poslodava: Faker::Company.name,
          email_poslodavca: Faker::Internet.email ,
          rok: Faker::Date.between(from: '2019-09-23', to: '2024-09-25')
        },
        {
              naziv_oglasa: Faker::Job.title,
              opis_oglasa: Faker::Job.field,
              naziv_poslodava: Faker::Company.name,
              email_poslodavca: Faker::Internet.email ,
              rok: Faker::Date.between(from: '2019-09-23', to: '2024-09-25')
            },
            {
                  naziv_oglasa: Faker::Job.title,
                  opis_oglasa: Faker::Job.field,
                  naziv_poslodava: Faker::Company.name,
                  email_poslodavca: Faker::Internet.email ,
                  rok: Faker::Date.between(from: '2019-09-23', to: '2024-09-25')
                }])

    p "Created #{Posao.count} genres"
  end
end