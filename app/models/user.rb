class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many:posts
  has_many:comments

 mount_uploader:avatar, AvatarUploader
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
