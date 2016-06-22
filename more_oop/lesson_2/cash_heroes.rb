class Person
  def initialize
    @heroes = ["Superman", "Spiderman", "Batman"]
    @cash = {"ones": 12, "fives": 2, "tens": 0, "twenties": 2, "hundreds": 0}
  end

  def cash_on_hand
    ones = @cash.select { |k, v| k == :ones}.values
    fives = @cash.select { |k, v| k == :fives}.values
    tens = @cash.select { |k, v| k == :tens}.values
    twens = @cash.select { |k, v| k == :twenties}.values
    huns = @cash.select { |k, v| k == :hundreds}.values
    total = ones[0] + (fives[0]*5) + (tens[0]*10) + (twens[0]*20) + (huns[0]*100)
    format("$%.2f", total)
  end

  def heroes
    @heroes.join(", ")
  end
end

object = Person.new
p object.cash_on_hand
p object.heroes
