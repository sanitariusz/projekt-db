class Domain < ActiveRecord::Base
  belongs_to :worker

  validates :name, presence: true
end
