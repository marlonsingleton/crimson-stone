class Person

  def name=(name)
    @first = name.split[0]
    @last = name.split[1]
  end

  def name
    @name = "#{@first} " + "#{@last}" 
  end
end
