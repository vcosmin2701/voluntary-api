# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_volunteer, mutation: Mutations::CreateVolunteer
    field :update_volunteer, mutation: Mutations::UpdateVolunteer
    field :delete_volunteer, mutation: Mutations::DeleteVolunteer
  end
end
