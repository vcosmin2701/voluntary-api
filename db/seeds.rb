volunteers = [
  {
    first_name: 'John',
    last_name: 'Doe',
    age: 28,
    email: 'john.doe@example.com',
    role: 'Driver',
    phone: '555-123-4567',
    date_joined: Date.new(2023, 1, 15)
  },
  {
    first_name: 'Jane',
    last_name: 'Smith',
    age: 34,
    email: 'jane.smith@example.com',
    role: 'Coordinator',
    phone: '555-987-6543',
    date_joined: Date.new(2022, 6, 22)
  },
  {
    first_name: 'Michael',
    last_name: 'Johnson',
    age: 45,
    email: 'michael.johnson@example.com',
    role: 'Fundraiser',
    phone: '555-456-7890',
    date_joined: Date.new(2021, 11, 8)
  }
]

volunteers.each do |volunteer_attributes|
  Volunteer.create!(volunteer_attributes)
end

puts "Created #{Volunteer.count} volunteers"
