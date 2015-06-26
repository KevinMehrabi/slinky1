require 'spec_helper'

RSpec.describe SessionsController do
 
  before do
    request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:linkedin]
   	@user = FactoryGirl.create(:user)
  end
 

  describe "#create" do
 
    it "should successfully create a user" do
      expect {
        post :create, provider: :linkedin
      }.to change{ User.count }.by(1)
    end
 
    it "should successfully create a session" do
      session[:user_id] = @user
      expect(session[:user_id]).to eq(@user)
    end
 
    it "should have http 200 status" do
      post :create, provider: :linkedin
      expect(response).to have_http_status(:success)
    end
 
  end
 
  describe "#destroy" do
    before do
      post :create, provider: :linkedin
    end
 
    it "should clear the session" do
      session[:user_id] = !nil
      delete :destroy
      expect(session[:user_id]).to be_nil
    end
 
    it "should redirect to the home page" do
      delete :destroy
      response.should redirect_to root_url
    end
  end

   describe "#auth_failure" do
	it "should redirect to the home page" do
	      delete :destroy
	      response.should redirect_to root_url
	    end
	 end
 
end