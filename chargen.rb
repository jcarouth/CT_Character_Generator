#!/usr/bin/env ruby
#

require 'Character'
require 'trav_functions.rb'

me = Character.new
me.set_terms(average2)
me.set_age
my_age = me.get_age

stat_names = ['Str', 'Dex', 'End', 'Int', 'Edu', 'Soc']
stat_names.each do |stat|
  me.set_stat(stat, make_stat)
end

me.set_upp
my_upp = me.get_upp
me.set_career('Scout')
puts "A #{my_age} year old #{me.get_career} with a UPP of #{my_upp}."


