class HomeController < ApplicationController
  before_action :set_client
  def index
    @followers = $client.followers
    @response = $client.menu
  end

  private
  def set_client
    $client ||= WeixinAuthorize::Client.new("wx345ff6c203aba807", "4ec49b85222209e720ccfcb2c789a088")
    p "xxxxxxxxxx"
    p $client.is_valid?
  end
end