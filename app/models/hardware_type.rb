class HardwareType < ActiveRecord::Base
 has_many :hardwares

  validates :name, presence: true
end
