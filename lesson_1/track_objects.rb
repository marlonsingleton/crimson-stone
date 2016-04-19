
class Droid
  @@tracker = 0

  def initialize
    @@tracker += 1
  end

  #self getter to access count
  def self.tracker_total
    @@tracker
  end

end

driod1 = Droid.new
driod2 = Droid.new
droid3 = Droid.new

puts "My driod count has grown from zero to #{Droid.tracker_total}."

