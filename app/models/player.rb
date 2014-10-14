class Player < ActiveRecord::Base
	
	has_many :hotels
	belongs_to :game
	validates :game_id, presence: true
	
end
