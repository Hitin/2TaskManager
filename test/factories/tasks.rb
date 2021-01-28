FactoryBot.define do
  factory :task do
    name
    description
    author factory: :manager
    assignee factory: :developer
    state
    expired_at { '2021-01-26' }
  end
end
