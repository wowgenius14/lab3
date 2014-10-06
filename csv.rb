

puts "Here is the mean of houses added per year"
f = File.open ("newhomes.csv")

info = f.readlines

i = 0
j = 1
data = []
while i < info.length
info[i]= info[i].split (/,/)
i+=1
end

while j < info.length
data[j] = info[j][1]
j+=1
end

k = 0
sum = 0
while k < info.length
sum += data[k].to_i
average = sum.to_f/611#exact number of rows. info.length = 613
k+=1
end
puts average.round.to_s
#We have the mean for standard deviation.
puts "Now for standard deviation\n"
l = 0
while l < info.length
data[l] =( data[l].to_i-55)**2
l+=1
end
m = 0
#Next find mean of squared numbers
sum2 = 0
while m <info.length
sum2 += data[m].to_i
average2 = sum2.to_f/611
m+=1
end
dev = Math.sqrt(average2)
puts dev.to_s

