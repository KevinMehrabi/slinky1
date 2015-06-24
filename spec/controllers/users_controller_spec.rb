require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views
  let(:json) { JSON.parse(response.body) }

  describe "GET #index" do
    before do 
      get :index, format: :json
      print json
    end 
    context 'all users' do 
        it 'returns the users' do
          expect(json.collect{|l| l["name"]}).to include(@user.name)
        end
      end
  end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
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
