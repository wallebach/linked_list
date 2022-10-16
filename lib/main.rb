require_relative 'linked_list.rb'

list = LinkedList.new

list.append(Node.new(5))
list.append(Node.new(6))
list.prepend(Node.new(4))
list.prepend(Node.new(3))
list.prepend(Node.new(2))
list.prepend(Node.new(1))
list.prepend(Node.new(0))

puts "Print list:"
puts list.to_s

puts "Head: #{list.head.value}, tail: #{list.tail.value}"
puts "Size: #{list.size}"

index = 5
puts "Element at #{index} is #{list.at(index)}"

puts "Remove elements from the back of the list:"
while list.size > 0 do
    puts "Current tail: #{list.tail.value}, current size: #{list.size}"
    list.pop
end