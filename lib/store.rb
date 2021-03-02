class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  def must_carry_men_or_women_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:apparel, "needs either men's or women's to be true")
    end
  end
end