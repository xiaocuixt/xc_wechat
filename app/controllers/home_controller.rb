class HomeController < ApplicationController
  before_action :set_client
  def index
    @user_info = $client.user(params[:openid]).to_json
    @subscriber = Subscriber.find_by(openid: params[:openid])
  end

  private
  def set_client
    $client ||= WeixinAuthorize::Client.new(ENV["APPID"], ENV["APPSECRET"])
    p $client.is_valid?
  end
end