class Employee < ActiveRecord::Base
  # 1. Declare Associations
  belongs_to :store
  #2. Declare Validations
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate,  inclusion: {in: 40..200}
  validates_associated :store

  #3. Register Callback Methods using symbols (method names)
  before_create :generate_random_password, :print_self

  private
  #4. Private methods (eg: callback code)
  def generate_random_password
    self.password = SecureRandom.hex(8)
    p "NEW PASSWORD => #{password}"
  end

  def print_self
    puts "This is self variable#{self}"
    puts "This is self variable password#{self.password}"
  end

  after_create :print_self
end
