class Album < ActiveRecord::Base
  mount_uploader :avatar, UserAvatarUploader

  #用户发送到微信的图片存到本地
  def self.generate_avatar image
    album = Album.new
    album.remote_avatar_url = image
    album.save!
  end
end