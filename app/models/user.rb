class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :rpx_connectable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_one :user_profile, :dependent => :destroy

  # def before_rpx_auto_create(rpx_user)
  #   # self[:login]=rpx_user[:username] if rpx_user[:username]
  #   debugger
  #   abc=1
  # end
end
