# require 'rails_helper'
# require 'spec_helper'

# RSpec.describe UsersController, type: :controller do
#   render_views
#   let(:json) { JSON.parse(response.body) }

#   before do
#       @user = FactoryGirl.create(:user)
#       @user2 = FactoryGirl.create(:user2)
#       @users = User.all
#       request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:linkedin]
#   end

#   describe "GET /users.json" do
#     before do 
#       get :index, format: :json, search: "web"
#     end 
 
#     context 'all users' do 
#       it 'returns the user names' do
#         user = User.create
#         session[:user_id] = user.id
#         expect(json.collect{|l| l["name"]}).to include(@user.name, @user2.name)
#       end
#     end

#     context 'users post search' do 
#        before do 
#         get :index, format: :json, search: "web"
#       end
#       it 'returns the user occupation with "web"' do
#         expect(json.collect{|l| l["description"]}).to include("web")
#       end
#   end
# end

  # describe "GET #show" do
  #   before do 
  #     get :index, format: :json, id: 1
  #   end
  #   context 'one listing' do 
  #     it 'returns one listing' do 
  #       expect(@user.id).to eq(1)
  #     end
  #   end
  # end

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
