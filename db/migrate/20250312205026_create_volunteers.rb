class CreateVolunteers < ActiveRecord::Migration[8.0]
  def change
    create_table :volunteers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age
      t.string :email, null: false
      t.string :role
      t.string :phone
      t.date :date_joined, null: false

      t.timestamps
    end
    add_index :volunteers, :email, unique: true # ensure that the values from the email column are unique
  end
end
