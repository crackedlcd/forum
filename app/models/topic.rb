class Topic < ActiveRecord::Base
	has_many :posts, :dependent => :destroy
	belongs_to :users

	validates :title, presence: true, length: { in: 5..80 }

	# validates :posts, presence: true
end
