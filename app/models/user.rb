class User < ActiveRecord::Base

	class << self
		def from_omniauth(auth_hash)
			user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
			user.name = auth_hash["info"]['name']
			user.email = auth_hash["info"]['email']
			user.username = auth_hash["info"]['nickname']
			user.location = auth_hash['info']['location']['name']
			user.image_url = auth_hash["info"]['image']
			user.url = auth_hash['info']['urls']['public_profile']
		    user.save!

		end
		
	end

end
