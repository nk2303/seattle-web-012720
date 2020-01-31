require_relative 'Cat'
require_relative 'CatCafe'
require 'pry'

fluffy = Cat.new("fluffy", "main coone")
spot = Cat.new("spot", "dog")
felix = Cat.new("felix", "cartoon")
garfield = Cat.new("garfield", "cartoon")

cc1 = CatCafe.new("Open Caturday")
cc2 = CatCafe.new("Cats n stuff")
garfield.cafe = cc2 
felix.cafe = cc2
fluffy.cafe = cc1
spot.cafe = cc1





binding.pry