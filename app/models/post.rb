class Post < ActiveRecord::Base
	belongs_to :users
	belongs_to :topics

	validates :content, presence: true, length: { minimum: 5 }
	validates :user_id, presence: true
	validates :topic_id, presence: true
end
