namespace :user do
  desc "Dodavanje User-a"
  task seed_user: :environment  do
    User.create([{
      email:'test@example.com',
      ime: 'test',
      password:'123321'
    }])

    p "Dodano #{User.count} usera"
  end
end