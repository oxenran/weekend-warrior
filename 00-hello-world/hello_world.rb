

def hello_world(name = "World")
  default_output = "Hello, World!"
  case
  when name.length == 0
    return default_output
  else
    return "Hello, #{name}!"
  end
end

#Lesson of the day:  you can set the default value of an argument.
#Mind blown
