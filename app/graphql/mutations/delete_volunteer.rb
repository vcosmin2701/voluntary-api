module Mutations
  class DeleteVolunteer < BaseMutation
    argument :id, ID, required: true

    field :success, Boolean, null: false
    field :errors, [String], null: false

    def resolve(id:)
      volunteer = Volunteer.find_by(id: id)

      return { success: false, errors: ["Volunteer not found"] } unless volunteer

      if volunteer.destroy
        { success: true, errors: [] }
      else
        { success: false, errors: volunteer.errors.full_messages }
      end
    end
  end
end