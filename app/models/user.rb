class User < ActiveRecord::Base
	class << self
		def from_omniauth(auth_hash)
			user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
			user.name = auth_hash["info"]['name']
			user.first_name = auth_hash["info"]['first_name']
			user.last_name = auth_hash["info"]['last_name']
			user.email = auth_hash["info"]['email']
			user.username = auth_hash["info"]['nickname']
			user.location = auth_hash['info']['location']['name']

			#temporarily comenting this out because 'code' sometimes does not work...
				# user.country = auth_hash['info']['location']['country']['code']
			user.country = auth_hash['info']['location']['country']			
			user.image_url = auth_hash["info"]['image']	
			user.url = auth_hash['info']['urls']['public_profile']
		    user.save!
		    user
		end
	end
end