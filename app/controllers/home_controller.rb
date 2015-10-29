class HomeController < ApplicationController
  before_action :set_client
  def index
    @followers = $client.followers
    @response = $client.menu
    @user_info = $client.user(1)
  end

  private
  def set_client
    $client ||= WeixinAuthorize::Client.new(ENV["APPID"], ENV["APPSECRET"])
    p "xxxxxxxxxx"
    p $client.is_valid?
  end
end