### Testing task 1 code:

# Carry out static testing on the code below.
# Read through the code.
# Comment any errors you can see without correcting them.


def func1 val #Added brackets
  if val = 1 #Should be == for conditional
  return true #Fixed indentation
  else
  return false #Fixed indentation
  end
end

dif max a b #Dif should be def, also needs brackets and a comma
  if a > b
      return a #Too much indentation
  else
  b #Indentation needs changed
  end
end
end #Extra end that needs deleted

def looper
  for i in 1..10
  puts i #Indentation
  end #Needs to return i
end

failures = 0

if looper == 10
  puts "looper passed"
else
  puts "looper failed"
  failures = failures + 1
#Missing end

if func1(3) == false
  puts "func1(3) passed"
else
  puts "func1(3) failed"
  failures = failures + 1
end


if max(100,1) == 100
  puts "max(100,1) passed"
else
  puts "func1(3) failed"
  failrues = failures + 1 #Spelling of failures
end


if failures
  puts "Test Failed" #Puts statements should be switched
else
  puts "Test Passed"
end
