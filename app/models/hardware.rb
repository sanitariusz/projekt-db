class Hardware < ActiveRecord::Base
  belongs_to :worker
  belongs_to :hardware_type

  validates :name, :serial, presence: true
end
