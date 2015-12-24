class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  #before_action :weixin_global
  include ApplicationHelper
  #$client = WeixinAuthorize::Client.new("wx345ff6c203aba807", "4ec49b85222209e720ccfcb2c789a088")
  p "ccccccccc"
  p $client.try(:is_valid?)

  def authorize_current_subscriber
    return redirect_to error_path if current_subscriber.blank?
  end

  private
  def weixin_global
    unless $client.try(:is_valid?)
      $client ||= WeixinAuthorize::Client.new(ENV["APPID"], ENV["APPSECRET"])
    end
  end
end
