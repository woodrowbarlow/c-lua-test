#!/usr/local/bin/lua

-- prints usage information
usage = function ()
  print (string.format("Usage: %s n", arg[0]))
  os.exit(1)
end

-- returns "fizz buzz" if n is divisible by 3 and 5
-- returns "fizz" if n is divisible by 3
-- returns "buzz" if n is divisible by 5
-- return n as a string otherwise
fizzbuzz = function (n)
  if n % 15 then
    return "fizz buzz"
  elseif n % 3 then
    return "fizz"
  elseif n % 5 then
    return "buzz"
  else
    return tostring (n)
  end
end

if arg[1] == nil then
  usage ()
end

n = tonumber(arg[1])

if n == nil then
  usage ()
end

print (fizzbuzz(n))
