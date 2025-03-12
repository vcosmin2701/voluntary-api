module Types
  class VolunteerType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :age, Integer, null: true
    field :email, String, null: false
    field :phone, String, null: true
    field :date_joined, GraphQL::Types::ISO8601Date, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :full_name, String, null: false

    def full_name
      "#{object.first_name} #{object.last_name}"
    end
  end
end
