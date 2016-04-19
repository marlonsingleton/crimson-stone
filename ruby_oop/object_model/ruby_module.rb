module Cup
  def crack(sound)
    "#{sound}"
  end
end 

class MyObject
  include Cup
end

glass = MyObject.new
glass_sound = glass.crack("crack")

puts "
Modules extend polymorphism by allowing more behaviors to be added into classes via mixins.

I dropped my cup, it went \"#{glass_sound}\" and shattered onto the floor.
\n"
