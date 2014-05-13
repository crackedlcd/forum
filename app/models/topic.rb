class Topic < ActiveRecord::Base
	has_many :posts, :dependent => :destroy
	belongs_to :users

	accepts_nested_attributes_for :posts

	validates :title, presence: true, length: { in: 5..80 }

	# validates :posts, presence: true
end
