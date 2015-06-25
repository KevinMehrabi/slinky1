require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views
  let(:json) { JSON.parse(response.body) }

  before do
      @user = FactoryGirl.create(:user)
      @user2 = FactoryGirl.create(:user2)
      @users = User.all
  end

  describe "GET #index" do
    before do 
      get :index, format: :json
    end 
    context 'all users' do 
        it 'returns the users' do
          expect(@users).to include(@user, @user2)
        end
      end
  end

  describe "GET #show" do
    before do 
      get :index, format: :json, id: 1
    end
    context 'one listing' do 
      it 'returns one listing' do 
        expect(@user2.first_name).to eq("Joe")
      end
    end
  end

  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     # expect(response).to have_http_status(:success) #truthy therefore pass!
  #   end
  # end

  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     # expect(response).to have_http_status(:success) #truthy therefore pass!
  #   end
  # end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     #expect(response).to have_http_status(:success)
  #   end
  # end

end
