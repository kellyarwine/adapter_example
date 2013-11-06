require 'mother_in_law'

class MotherInLawToTelemarketerAdapter < Telemarketer
	def initialize(mother_in_law)
		@mother_in_law = mother_in_law
	end

	def call
		@mother_in_law.badger
	end

	def talk_for(time)
		@mother_in_law.nag_for(time)
	end
end