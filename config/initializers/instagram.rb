require "instagram"

Instagram.configure do |config|

config.client_id = ENV["INSTA_ID"]

config.access_token = ENV["INSTA_TOKEN"]

end
