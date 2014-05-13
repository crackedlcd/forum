require 'spec_helper'

describe TopicsController do

  let(:user) { FactoryGirl.create(:user) }
  let(:topic) { FactoryGirl.create(:topic) }

  describe "GET #index" do 
    it "sends an array of topics" do 
      get :index
      expect(assigns(:topics)).to eq([topic])
    end
  end

  describe "POST #create" do


    context 'success' do 
      before { post :create, :topic }
      it { should set_the_flash.to('Topic successfully created') }
      it { should redirect_to topics_url }
    end
  end 

end
