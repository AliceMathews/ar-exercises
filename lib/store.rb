class Store < ActiveRecord::Base
  has_many :employees
  
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}

  validate :must_carry_mens_or_womens_apparel

  before_destroy :check_store_is_empty

  def must_carry_mens_or_womens_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:apparel, "must sell something")
    end
  end

  private 
    def check_store_is_empty
      if self.employees.size > 0
        return false
      end
    end
end

