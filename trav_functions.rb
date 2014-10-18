
def roll2
  return 2 + rand(6) + rand(6)
end

def roll1
  return 1 + rand(6)
end

def average2
  return ((rand(6) + rand(6)) / 2) + 1
end

def hexconvert(num)
  return num.to_s(16).upcase
end

def make_stat
  return hexconvert(roll2)
end

def set_career
  terms = rand(6) + 1
  age = 18 + (terms * 4)
  careers = ['Navy', 'Army', 'Marines', 'Merchants', 'Scouts']
  career = careers[rand(careers.length)]
  return age, terms, career
end

def build_skills(career)
  skills = Hash.new
  skills['Army'] = ['CbtR', 'Drive', 'Ldr', 'CbtR', 'Mech', 'GunCbt', ]
  skills['Marines'] = ['CbtR', 'BattleDress', 'Ldr', 'CbtR', 'Mech', 'GunCbt', ]
  skills['Navy'] = ['Pilot', 'Nav', 'Sensors',]
  skills['Merchants'] = ['Pilot', 'Nav', 'Broker', 'Steward', 'Math']
  skills['Scouts'] = ['Pilot', 'Nav', 'Sensors',]

  max = skills[career].length
  return skills[career][rand(max)]

end

#stats = {
#       'Str' => nil,
#       'Dex' => nil,
#       'End' => nil,
#       'Int' => nil,
#       'Edu' => nil,
#       'Soc' => nil
#       }

#stats_names = ['Str', 'Dex', 'End', 'Int', 'Edu', 'Soc']

#upp = ''

#stats.each_key do |stat|
#  stats[stat] = make_stat
#end

# age, terms, career = set_career

# skill_list = Hash.new
# terms.times do
#  new_skill = build_skills(career)
#  skill_list.[new_skill]=0
# end

# Output

#puts "." * 10

#stats_names.each do |stat|
#  upp = upp + stats[stat]
#end

#puts "UPP: #{upp}."
#puts "#{age} year old with #{terms} terms in the #{career}."

#skill_list.each do |skill|
#  puts skill
#end

# puts "." * 10

