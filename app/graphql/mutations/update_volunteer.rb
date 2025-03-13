module Mutations
  class UpdateVolunteer < BaseMutation
    argument :id, ID, required: true
    argument :attributes, Types::VolunteerInputType, required: true

    field :volunteer, Types::VolunteerType, null: true
    field :errors, [String], null: false

    def resolve(id:, attributes:)
      volunteer = Volunteer.find_by(id: id)

      return { volunteer: nil, errors: ["Volunteer could not be found"] } unless volunteer

      if volunteer.update(
        first_name: attributes[:first_name],
        last_name: attributes[:last_name],
        age: attributes[:age],
        email: attributes[:email],
        role: attributes[:role],
        phone: attributes[:phone],
        date_joined: attributes[:date_joined]
      )
        {
          volunteer: volunteer,
          errors: []
        }
      else
        {
          volunteer: nil,
          errors: volunteer.errors.full_messages
        }
      end
    end
  end
end
