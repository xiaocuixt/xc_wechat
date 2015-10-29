module ApplicationHelper

  #查找当前用户
  def current_subscriber
    Subscriber.find_by(openid: session[:openid])
  end

  def haha
    "xxxxx"
  end

end
