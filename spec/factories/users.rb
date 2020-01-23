FactoryBot.define do
  factory :user do
    first_name { 'Harry' }
    surname { 'Mumford' }
    username { 'hmumford' }
    email { 'harry_mumford@hotmail.co.uk' }
    password { 'password' }
  end
end
