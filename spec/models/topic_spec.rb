require 'spec_helper'

describe Topic do 

	let(:user) { FactoryGirl.create(:user)}

	context "on create" do

		it "should not be created without a post" do 
			@topic = user.topics.build(title: "An Example Title", id: 1)
			expect(@topic).not_to be_valid

		end
	end
end