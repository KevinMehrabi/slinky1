class User < ActiveRecord::Base
	geocoded_by :full_address
	after_validation :geocode

	def full_address
	  [address, city, state, zipcode].join(', ')
	end
	class << self
		def from_omniauth(auth_hash)
			user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
			user.name = auth_hash["info"]['name']
			user.first_name = auth_hash["info"]['first_name']
			user.last_name = auth_hash["info"]['last_name']
			user.description = auth_hash["info"]['description']
			user.email = auth_hash["info"]['email']
			user.username = auth_hash["info"]['nickname']
			user.location = auth_hash['info']['location']['name']
			user.country = auth_hash['info']['location']['country']['code']
			user.image_url = auth_hash["info"]['image']
			user.url = auth_hash['info']['urls']['public_profile']
		    user.save!
		    user
		end
	end

	def self.search(query)
  		where("name like ?", "%#{query}%")
	end


end
