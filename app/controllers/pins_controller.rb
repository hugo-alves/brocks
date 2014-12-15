class PinsController < ApplicationController

	def index
		#@teste = Instagram.user_search(params[:q], {:count => 1}).to_json
		#@teste = ActiveSupport::JSON.decode(@teste)
		#@userid = @teste[:id].to_i
		#@userid = @userid
		@instagram = Instagram.user_recent_media(@teste, {:count => 5})
	end

	def perfil
		@instagram = Instagram.user_search(params[:q], {:count => 1})
	end


end




