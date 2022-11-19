class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer:true, greater_than: -1}

  before_destroy :can_destroy?, prepend: true


  private

  def can_destroy?
    if self.employees.size > 0
      logger.info "Friends applaud, the comedy is over"
      throw :abort
    end
  end
end
