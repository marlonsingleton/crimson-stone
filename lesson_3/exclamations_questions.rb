explanations = <<-MSG

Method names ending in ! or ? are clues to what the method will
likely do. When an ! appears at the end of the method name it
permanently mutates the object being called, if the ! is actually
part of the method's name; so it cannot just be placed at the end
of a method any time we feel like it. While ? at the end of a method
will likely return a 'true' or 'false' after evaluating the argument.
But again this could be a syntax error if the ? is not part of
the method's name, so don't go placing them there at will.
!= means not equal and is used to perform logical expressions.
! before a variable negates it. Oddly, !words.uniq! negates 'words'
but does not prevent it from being  mutated. ? before variables
causes a syntax error. !! is like a double-negative thus evaluates to true.

MSG

puts explanations
