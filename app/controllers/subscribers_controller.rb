class SubscribersController < ApplicationController
  before_action :authorize_current_subscriber
  def index
  end
end