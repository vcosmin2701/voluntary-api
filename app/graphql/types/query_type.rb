# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Get all volunteers
    field :volunteers, [Types::VolunteerType], null: false,
          description: "Returns a list of all volunteers"
    def volunteers
      Volunteer.all
    end

    # Get a specific volunteer by ID
    field :volunteer, Types::VolunteerType, null: true do
      argument :id, ID, required: true
      description "Find a volunteer by ID"
    end

    def volunteer(id:)
      Volunteer.find_by(id: id)
    end
  end
end
