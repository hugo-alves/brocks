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

	def fromlink
		require "net/http"
		#saca so o fim do url da foto que o user colou, para usar no pedido do oembed
		@short = URI(params[:q]).path.split('/').last

		#junta tudo para ter o url directo da foto com tamanho grande
		@cone = 'http://instagram.com/p/' + @short + '/media/?size=l'


		
		
		
	end


end




