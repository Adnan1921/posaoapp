namespace :user do
  desc "Seeds User"
  task seed_user: :environment  do
    User.create([{
      email:'test@example.com',
      password:'123321'
    }])

    p "Created #{User.count} genres"
  end
end