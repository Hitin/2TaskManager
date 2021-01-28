FactoryBot.define do
  factory :user do
    first_name
    last_name
    password
    email
    avatar
    type { '' }
  end

  factory :developer, class: Developer, parent: :user do
    type { 'Developer' }
  end

  factory :manager, class: Manager, parent: :user do
    type { 'Manager' }
  end

  factory :admin, class: Admin, parent: :user do
    type { 'Admin' }
  end
end
