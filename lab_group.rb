wdi = "Daniel Willy Ryan Nicholas Mike Jack Stephen Tarum Andrew Hui Sanjita".split
random = wdi.shuffle

puts "What is the desired Group Size?"
group_size = gets.chomp.to_i
puts ""

groups = []
while random.size != 0
  group = random.pop group_size
  groups.push group
  #puts group.join ', '
  #print "Remaining:"
  #puts random.join ', '
end

groups.each do |g|
  print "Group: "
  puts g.join ', '
  #print "Too small!" if (g.length < group_size)
end

puts groups.last
puts groups.last.size
puts group_size

if group.last.size.to_i < group_size
  print "Too Small!"

end