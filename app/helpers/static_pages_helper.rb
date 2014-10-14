module StaticPagesHelper

	def new_turn

		if !currentPlayer.nil?
			currentPlayer = (currentPlayer % 4) + 1
		else
			currentPlayer = 1
		end
	end
end
