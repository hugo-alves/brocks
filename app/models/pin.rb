class Pin < ActiveRecord::Base
	mount_uploader :slyce, SlyceUploader
end
