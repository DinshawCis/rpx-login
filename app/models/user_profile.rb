class UserProfile < ActiveRecord::Base
  attr_accessible :name, :profession, :avatar, :remote_avatar_url
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
end
