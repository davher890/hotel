class Hotel < ActiveRecord::Base

	belongs_to :game
	validates :game_id, presence: true
	belongs_to :player
end
