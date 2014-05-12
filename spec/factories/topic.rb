FactoryGirl.define do 

	factory :topic do 
		title "Example Title"
		user_id 1
		id 1
		factory :topic_with_post do
			after_create do |topic|
				create(:post, topic: topic)
			end
		end
	end

	factory :post do 
		content "This is an example post"
		topic_id 1
		user_id 1
	end
end