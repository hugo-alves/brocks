class PinsController < ApplicationController

	def index
		teste = Instagram.user_search(params[:q], {:count => 1})
		@instagram = Instagram.user_recent_media(teste, {:count => 5})
	end

	def perfil
		@instagram = Instagram.user_search(params[:q], {:count => 1})
	end


end




