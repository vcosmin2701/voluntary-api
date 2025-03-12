module Types
  class VolunteerInputType < Types::BaseInputObject
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :age, Integer, required: false
    argument :email, String, required: true
    argument :role, String, required: false
    argument :phone, String, required: false
    argument :date_joined, GraphQL::Types::ISO8601Date, required: true
  end
end
