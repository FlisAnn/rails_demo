FactoryBot.define do
  factory :article do
    title { "MyString" } # Unless I state what title I want. Comes from generating the model
    content { "MyText" }
  end
end
