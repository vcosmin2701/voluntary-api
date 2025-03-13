module Mutations
  class CreateVolunteer < BaseMutation
    argument :attributes, Types::VolunteerInputType, required: true

    field :volunteer, Types::VolunteerType, null: true
    field :errors, String, null: false

    def resolve(attributes:)
      formatted_date_joined = attributes[:date_joined]

      volunteer = Volunteer.new(
        first_name: attributes[:first_name],
        last_name: attributes[:last_name],
        age: attributes[:age],
        email: attributes[:email],
        role: attributes[:role],
        phone: attributes[:phone],
        date_joined: formatted_date_joined,
      )

      if volunteer.save
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
