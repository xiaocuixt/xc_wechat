class HomeController < ApplicationController
  before_action :authorize_current_subscriber, only: :index

  def index
  end

  def auth
    subscriber = Subscriber.where(openid: params[:openid]).first
    if subscriber.present?
      session[:openid] = subscriber.openid
      redirect_to index_path
    else
      return redirect_to error_path
    end
  end

  def error
    p ENV['HOST']+'auth'
  end
end