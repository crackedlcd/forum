require 'spec_helper'

describe TopicController do

  describe "GET #index" do 
    it "sends an array of topics" do 
      topic = create(:topic)
      get :index
      assigns(:topic).should eq([topic])
    end
  end

end
