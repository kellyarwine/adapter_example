require 'house_fly'

class HouseFlyToTelemarketerAdapter < Telemarketer
	def initialize(house_fly)
		@house_fly = house_fly
	end

	def call
		@house_fly.fly_around_and_land_on_heads
	end

	def talk_for(time)
		@house_fly.buzz_for(time)
	end
end