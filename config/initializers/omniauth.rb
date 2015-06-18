Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, ENV['LINKEDIN_KEY'], ENV['LINKEDIN_SECRET']
	OmniAuth.config.on_failure = Proc.new do |env|
		SessionsController.action(:auth_failure).call(env)
	end
end
