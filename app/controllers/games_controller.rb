class GamesController < ApplicationController

	def new

		@game = Game.new
		
		@game.hotels = Hotel.all
		@game.players = Player.all
		@currentPlayer = Player.find(@game.current_player)

	end

	def update
		respond_to do |format|
			if @player.update(player_params)
				format.html { redirect_to @player, 
					notice: 'Player was successfully updated.' }
				format.json { render :show, 
					status: :ok, location: @player }
			else
				format.html { render :edit }
				format.json { render json: @player.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	def game_params
		params.require(:game).permit(:turn, :current_player)
	end
end
