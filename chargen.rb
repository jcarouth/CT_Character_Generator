#!/usr/bin/env ruby
#

require 'Character'
require 'trav_functions.rb'

me = Character.new('m', 'Scout', 'scuba')
me.set_terms(average2)
me.set_age
my_age = me.get_age

stats_names = ['Str', 'Dex', 'End', 'Int', 'Edu', 'Soc']
stats_names.each do |stat|
  me.set_stat(stat, make_stat)
end

me.set_upp
my_upp = me.get_upp
puts "My age is #{my_age} and my UPP is #{my_upp}."


