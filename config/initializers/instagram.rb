require "instagram"

if Rails.env.development?
	begin
	  YAML.load(File.read('config/instagram.yml')).each { |key, value| ENV[key] = value }
	rescue
		raise 'instagram.yml file not found in config dir.'
	end
end

Instagram.configure do |config|
	config.client_id = ENV['INSTAGRAM_CLIENT_ID']
	config.client_secret = ENV['INSTAGRAM_CLIENT_SECRET']
end