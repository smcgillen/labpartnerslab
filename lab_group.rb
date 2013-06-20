wdi = "Daniel Willy Ryan Nicholas Mike Jack Stephen Tarum Andrew Hui Sanjita".split
random = wdi.shuffle

puts "What is the desired Group Size?"
group_size = gets.chomp.to_i
puts ""

if group_size <= 0
  puts "Invalid group size"
  puts "What is the desired Group Size?"
  group_size = gets.chomp.to_i
  puts ""
end

groups = []
while random.size != 0
  group = random.pop group_size
  groups.push group #creating supergroup array with small group arrays as subjects
end

if groups.last.length < group_size
  puts "Too Small!"
  puts "Re-allocating stragglers to 2nd last group"
  puts ""
  groups[-2] = groups[-2] + groups.last #allocating stragglers to 2nd last group
  groups.pop
end

groups.each do |g|
  print "Group: "
  puts g.join ', '
end

#puts groups.last
#puts groups.last.size
#puts group_size

