require_relative 'node.rb'

class LinkedList
    attr_accessor :head
    attr_accessor :tail
    attr_accessor :size

    def initialize
        @size = 0
    end

    def append(node)
        if tail == nil 
            @head = node
            @tail = node
        else
            @tail.next = node
            @tail = node
        end
        @size += 1
    end

    def prepend(node)
        if head == nil 
            @head = node
            @tail = node
        else
            node.next = @head
            @head = node
        end
        @size += 1
    end

    def at(index)
        return if index >= @size
        
        counter = 0 
        node = @head

        for counter in 0..index - 1 do 
            node = node.next
        end

        node.value
    end

    def pop  
        if @size == 0
            return 
        elsif @size == 1
            @head = nil
            @tail = nil
            @size = 0
        else
            new_tail = @head
            while new_tail.next != @tail
                new_tail = new_tail.next
            end
            @tail = new_tail
            @size -= 1
        end
    end 

    def contains?(value)
        return false if @size == 0

        counter = 0
        current_node = @head
        while counter < @size do
            return true if current_node.value == value
            current_node = current_node.next
            counter += 1
        end
        false
    end

    def find(value)
        return nil if @size == 0

        counter = 0
        current_node = @head
        while counter < @size do 
            return counter if current_node.value == value
            current_node = current_node.next
            counter += 1
        end
        nil
    end

    def to_s
        return "Empty list. Nothing to return." if @size == 0
        current_node = @head
        index = 0
        result = ""
        while index < @size
            result.concat("(#{current_node.value}) -> ")
            current_node = current_node.next
            index += 1
        end
        result.concat(" nil ")
        result
    end
end
