class PinsController < ApplicationController

	def index
	    @instagram = Instagram.user_recent_media(params[:q], {:count => 10})
	end

	def perfil
		@instagram = Instagram.user_search(params[:q], {:count => 1})
	end

	def busca
		@instagram = Instagram.user_search(:query, {:count => 1})
	end

end




