class Post < ActiveRecord::Base
	belongs_to :users, :topics
end
