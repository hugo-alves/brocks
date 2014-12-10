class PinsController < ApplicationController

	def index
	    @instagram = Instagram.user_recent_media("11056439", {:count => 1})
	end

	def perfil
		@instagram = Instagram.user_search("ugus", {:count => 1})
	end

end




