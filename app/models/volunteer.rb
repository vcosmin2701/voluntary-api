class Volunteer < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :date_joined, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 15, allow_nil: true }
end
