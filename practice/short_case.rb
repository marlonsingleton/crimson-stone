stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'; puts "Go!" # should have used then
when 'yellow'; puts "Slow Down!" # should have used then
else; puts "Stop!" # should have used then
end
