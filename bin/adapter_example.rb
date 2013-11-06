$:.unshift File.expand_path(File.join(File.dirname(__FILE__), '../lib'))

require 'telemarketer'
require 'house_fly'
require 'mother_in_law'
require 'house_fly_to_telemarketer_adapter'
require 'mother_in_law_to_telemarketer_adapter'

telemarketer = Telemarketer.new
house_fly = HouseFly.new
mother_in_law = MotherInLaw.new

puts "---------------------------------"
telemarketer.call
house_fly.fly_around_and_land_on_heads
mother_in_law.badger
puts "---------------------------------"

annoying_things = []
annoying_things << Telemarketer.new
annoying_things << HouseFlyToTelemarketerAdapter.new(HouseFly.new)
annoying_things << MotherInLawToTelemarketerAdapter.new(MotherInLaw.new)

annoying_things.each do |annoying_thing|
	annoying_thing.call
end
puts "---------------------------------"