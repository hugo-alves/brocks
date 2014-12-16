class PinsController < ApplicationController

	def index
		#vai buscar as infos do user atraves do username
		@teste = Instagram.user_search(params[:q], {:count => 1})
		#saca apenas o user id dessas infos
		@teste = @teste.first.id
		#vai buscar as ultimas 20 fotos desse userid
		@instagram = Instagram.user_recent_media(@teste, {:count => 20})
	end

	def perfil
		@instagram = Instagram.user_search(params[:q], {:count => 1})
	end


end




