class Message < ActiveRecord::Base

  def self.generate_message message
    arr = []
    message.each do |m|
      arr << m.title
    end
    arr
  end
end
