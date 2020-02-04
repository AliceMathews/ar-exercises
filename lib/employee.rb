class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: {in: (40..200)}
  validates :store_id, presence: true

  after_create :generate_password_for_employee

  private 
    def generate_password_for_employee
      charset = Array('A'..'Z') + Array('a'..'z')
      self.password = Array.new(8) {charset.sample}.join
      self.save
    end
end
