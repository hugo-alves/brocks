class Imagen < ActiveRecord::Base
	belongs_to :user
    has_attached_file :image, :styles => { :large => "640x640", :medium => "306x306>", :thumb => "150x150>" }
end
