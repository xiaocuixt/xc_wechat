class Post < ActiveRecord::Base
  after_save :clear_cache

  def clear_cache
    $redis.del "posts"
  end
end
