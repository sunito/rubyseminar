if bedingung
  ...
end

unless bed
  ...
end

tue_was if bedingung
tue_was unless bedingung

while bedingung do
  ...
end

case farbe
when rot
  ...
when gruen, blau
  ...
else
  ...
end

status = case farbe
	when rot
	  "error"
	when gruen, blau
	  "OK"
	else
	  "xxx"
	end

1.upto(100) do |i|
  puts i
end

199.downto(1) do |i|
  puts i
end

for i in [1,2,39 
  puts i
end

[1,3,2].each do |i|
  puts i
end

[1,3,2].each { |i| 
  puts i
}

[1,3,2].reverse.each { |i| 
  puts i
}

i=0
while i < 10 do
  puts i
  break if i == 5
  i = i + 1
end


while i < 10 do
  puts i
  if bedingung
    next  
  end
  i = i + 1
  redo if i == 3

end

while 


i=0
for i in 1..10 
  puts i
  retry  if i == 5
  ....
  ....
end

[1,2,3].each {|i|
  puts i
}
(1..3).each {|i|
  puts i
}

loop do
  ...
  break
end

10.times do |i|
  puts i
end


