#ROTD13 the simple way...not sure if previous code is of any use. Oh well. Code on!
def rotd13(messages)
  conversion = messages.map do |message|
    message.tr('a-mn-zA-MN-Z', 'n-za-mN-ZA-M')
  end
  conversion.join(" ")
end

phrase = ["Hello there, here's a simple way to do the ROTD13 cipher."]

p phrase.join(" ")
p rotd13(phrase)
