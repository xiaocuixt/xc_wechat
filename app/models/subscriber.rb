class Subscriber < ActiveRecord::Base

  def update_subscriber openid
    begin
      weixin_user = $client.user(openid)  #返回一个json对象
      subscriber = Subscriber.find_or_create_by(openid: openid)
      subscriber.sex = weixin_user.result['sex'].to_i
      subscriber.nickname = weixin_user.result['nickname']
      subscriber.city = weixin_user.result['city']
      subscriber.province = weixin_user.result['province']
      subscriber.country = weixin_user.result['country']
      subscriber.headimgurl = weixin_user.result['headimgurl']
      subscriber.remark = weixin_user.result['remark']
      subscriber.save
    rescue => e
      p "#{e}"
    end
  end
end
