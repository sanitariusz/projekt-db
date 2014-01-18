class Worker < ActiveRecord::Base
  has_many :hardwares
  has_many :domains

  validates :name, :surname, :email,  presence: true
  validates :name, uniqueness: { scope: :surname }
  #
  #def to_s
  #  full_name
  #end
  #
  #def full_name
  #  self.name + ' ' + self.surname rescue "tadam"
  #end
end