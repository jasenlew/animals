require "./animal_module_basic_instinct"
require "./animal_module_driving"				

class Animal
	include Basic_Instinct

	def initialize(legs, name = nil)
		@_appenditures = legs
		@name = name
	end

	# def name
	# 	@name 											# Attribute getter  ==  attr_reader :name
	# end

	# def name=(new_name)
	# 	@name = new_name + '!'			# Attribute setter WITH add-on string '!'  ==  attr_writer :name
	# end

	attr_accessor :name

	attr_accessor :eyes

	class << self										# Writing a Class variable with attr_accessor (I think)
		attr_accessor :oxygen
	end

	def o2(parameter="Needs oxygen to breathe!!!!!!")	
		@@oxygen = parameter
		puts @@oxygen
	end
end

class Human < Animal
	include Driving

	def eat
		puts "#{@name} is eating politely."
	end
end

puts "- " * 10
spider = Animal.new(8)
spider.run
spider.eat
spider.o2

puts "- " * 10
jasen = Human.new(2, "Jasen")
jasen.run
jasen.eat
jasen.o2

puts "- " * 10
jasen.car
jasen.eyes = 2
puts "#{jasen.name} has #{jasen.eyes} eyes."


puts "- " * 10
jasen.o2	
jasen.o2("NO MORE OXYGEN...")
spider.o2												# How / can a Class variable be changed in an object (instance) of the Class?

# monkey = Animal.new(1)
# monkey.name = "Mickey"

# some_name = "my new name"
# f = Animal.new(2)
# f.name = some_name
# puts f.name
# puts "- " * 10; puts ""
