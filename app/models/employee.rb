class Employee < ApplicationRecord
  validates :username, :name, :email, :password, :mobile, :joining_date, presence: true

  validates :username, length: {in:  6..10}
  # length: {minimum:10,maximum:20} required 10 to 20 length
  validates :email, uniqueness: true
  validates :password, format: {with:/\A[a-zA-Z0-9]+\z/,message:"must be at least 6 characters and include one number and one letter."}, length: {is:6}
  validates :mobile, numericality: true, length: {is:10}

  # custome
  validate :joining_date , :joining_date_cannot_in_past

  def joining_date_cannot_in_past
    if self.joining_date.present?
      if self.joining_date < Date.today
        errors.add(:joining_date,"Date can't be in past")
      end
    end
  end
end
