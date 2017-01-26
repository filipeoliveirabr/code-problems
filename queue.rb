class Node
    attr_accessor :value, :next
    def initialize(value)
        @value = value
    end
end

class Queue
    
    attr :head
    
    def enqueue(value)
        p value
        unless @head
            @head = Node.new(value)
        else
            head_temp = @head
            while(head_temp.next)
                head_temp = head_temp.next
            end
            head_temp.next = Node.new(value)
        end
    end
    
    def dequeue()
        if(isEmpty())
            raise "Fila vazia"
        end   
        head_temp = @head
        @head = head_temp.next
        head_temp
    end
    
    def peek()
        @head
    end
    
    def isEmpty()
        @head.nil?
    end
end

#q = Queue.new

#1000000000.times do | num |
#    q.enqueue( num )
    
#end

#while( !q.isEmpty() )
#    p q.dequeue().value
#end


stack = []

10.times do | num |
    stack << num
end

p stack.inspect


while(!stack.empty?)
   p stack.pop
end


p "================"


queue = Queue.new
10.times do | num |
    queue << num
end

    p queue.inspect

while( !queue.empty? )
    p queue.pop
end



