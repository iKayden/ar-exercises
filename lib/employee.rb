class Employee < ActiveRecord::Base
  belongs_to :store

  validates :name, :last_name, :store, presence: true
  validates :hourly_rate,  inclusion: {in: 40..200}
end
