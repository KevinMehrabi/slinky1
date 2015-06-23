require 'rails_helper'

# Custom print function
def print arg
    p arg if true
end

RSpec.describe User, type: :model do

    describe "users" do
    	# Fields come from the factory file
        it 'should have a defaulted first_name field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.first_name).to eq "Joe"
        end
    end
    describe "users" do
        # Fields come from the factory file
        it 'should have a defaulted last_name field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.last_name).to eq "Random"
        end
    end
    describe "users" do
        # Fields come from the factory file
        it 'should have a defaulted email field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.email).to eq "joe@random.com"
        end
    end
    describe "users" do
        # Fields come from the factory file
        it 'should have a defaulted latitude field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.latitude).to eq 34
        end
    end
    describe "users" do
        # Fields come from the factory file
        it 'should have a defaulted longitude field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.longitude).to eq 74 
        end
    end
    describe "users" do
        # Fields come from the factory file
        it 'should have a defaulted description field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.description).to eq "blah blah"
        end
    end
    describe "users" do
        # Fields come from the factory file
        it 'should have a defaulted provider field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.provider).to eq "linkedin" 
        end
    end
    describe "users" do
        # Fields come from the factory file
        it 'should have a defaulted image_url field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.image_url).to eq "https://media.licdn.com/blah/blah"
        end
    end
    describe "users" do
        # Fields come from the factory file
        it 'should have a defaulted country field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.country).to eq "us"
        end
    end
    describe "users" do
        # Fields come from the factory file
        it 'should have a defaulted url field' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.url).to eq "https://www.linkedin.com/pub/random"
        end
    end

    describe "#full_address" do
    	it "should return address seperated by comma" do
    		user = FactoryGirl.build_stubbed(:user, address: "483 Gayley Avenue", city: "Los Angeles", state: "CA", zipcode: "90024")
    		print user
    		expect(user.full_address).to eq "483 Gayley Avenue, Los Angeles, CA, 90024"
    	end
    end


end
