class Store < ActiveRecord::Base
  has_many :employees
  
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}

  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:apparel, "must sell something")
    end
  end


end

