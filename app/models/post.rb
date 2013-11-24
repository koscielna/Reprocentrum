class Post < ActiveRecord::Base
  validates_presence_of :topic, :body
end
