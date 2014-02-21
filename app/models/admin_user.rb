class AdminUser < ActiveRecord::Base
#  ROLES = ['admin officer user']
#
#  def is_admin?
#    role == ROLES.admin do
#      can :all
#    end
#  end



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

end
