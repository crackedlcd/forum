class Post < ActiveRecord::Base
	belongs_to :users
	belongs_to :topics

	validates :content, presence: true, length: { minimum: 5 }
end
