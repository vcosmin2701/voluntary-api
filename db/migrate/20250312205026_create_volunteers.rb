class CreateVolunteers < ActiveRecord::Migration[8.0]
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :role
      t.string :phone
      t.date :date_joined

      t.timestamps
    end
  end
end
