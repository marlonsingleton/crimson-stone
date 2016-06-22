def convert_temp(temperature, input_scale: " ", **options)
  options = {output_scale: "celsius"} if options == {}
  if input_scale == "celsius" && options[:output_scale] != "celsius"
    return temperature * (9.0/5.0) + 32 if options[:output_scale] == "fahrenheit"
    return temperature + 273.15 if options[:output_scale] == "kelvin"
  elsif input_scale == "fahrenheit" && options[:output_scale] != "fahrenheit"
    return (temperature - 32) * (5.0/9.0) if options[:output_scale] == "celsius"
    return (temperature - 32) * (5.0/9.0) + 273.15 if options[:output_scale] == "kelvin"
  elsif input_scale == "kelvin" && options[:output_scale] != "kelvin"
    return temperature - 273.15 if options[:output_scale] == "celsius"
    return ((temperature - 273.15) * (9.0/5.0) + 32) if options[:output_scale] == "fahrenheit"
  else
    temperature
  end 
end

p convert_temp(0, output_scale: "kelvin")
