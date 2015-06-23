require 'rails_helper'

# Custom print function
def print arg
    p arg if true
end

RSpec.describe User, type: :model do

    describe "users" do
    	# Fields come from the factory file
        it 'should have a defaulted fields' do
            user = FactoryGirl.build(:user)
            print user
            expect(user.first_name).to eq "Megan" # What should this equal?
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
