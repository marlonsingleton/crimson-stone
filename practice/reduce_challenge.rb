def sum(f_name, *rest)
  rest.reduce(f_name) { |name, nx_name| "#{name} " + "#{nx_name}" }
end

p sum("Chess", "is", "better", "than", "checkers")
