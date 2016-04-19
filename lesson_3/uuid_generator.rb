
def uuid_generator
  uuid = [8, "-", 4, "-", 4, "-", 4, "-", 12]
  uuid_array = []
  zero_thru_nine = (0..9).to_a
  a_thru_f = ('a'..'f').to_a
  choices = zero_thru_nine.concat(a_thru_f)

  uuid.each do |format|
    if format != "-"
      format.times do
        uuid_array.push(choices.sample)
      end
    else
      uuid_array.push(format)
    end
  end

  uuid_array.join
end

p uuid_generator
