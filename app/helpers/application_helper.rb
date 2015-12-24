module ApplicationHelper

  #查找当前用户
  def current_subscriber
    Subscriber.find_by(openid: session[:openid])
  end

  def haha
    "xxxxx"
  end

  def fetch_posts
    posts = $redis.get("posts")
    if posts.nil?
      posts = Post.all.to_json
      $redis.set("posts", posts)
      $redis.expires("posts", 5.hour.to_i)
    end
    @posts = JSON.load posts
  end
end
