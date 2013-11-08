class Message < ActiveRecord::Base
  validates_presence_of :full_name, :email, :topic, :body
end
