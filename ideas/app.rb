###  notes from Jeff C.

class Character
  attr_accessor :name
 
  def initialize(attributes = {})
    attributes.each do |attr, value|
      setter = "#{attr}="
      send(setter, value) if self.respond_to?(setter)
    end
  end
end
 
characters = %w(Joe Bob Guido).inject([]) do |arr, name|
  arr << Character.new(:name => name)
end
 
puts characters.inspect
