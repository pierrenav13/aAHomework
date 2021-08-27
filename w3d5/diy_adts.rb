class Stack
    def initialize
        @ivar = []
    end

    def push(el)
        @ivar << el
    end

    def pop
        @ivar.delete(@ivar.last)
    end


    def peek
        @ivar.first
    end

end

class Queue
    def initialize
        @ivar = []

    end

    def enqueue(el)
        @ivar = [el] + @ivar
    end

    def dequeue
        @ivar.delete(@ivar.first)
    end

    def peek
        @ivar.first
    end
end

class Map
    def initialize
        @ivar = Array.new {Array.new}
    end

    def set(key, value)
        new_arr = @ivar.dup
        new_arr.map! do |subarray|
            if subarray[0] == key
                arr = subarray[0], subarray[1] = key, value
                arr
            else
                subarray
            end
        end
        if new_arr == @ivar
            @ivar << [key, value]
        else
            @ivar = new_arr
        end
    end

    def get(key)
        @ivar.each do |subarray|
            return subarray.last if subarray.first == key
        end
    end

    def delete(key)
        @ivar.each do |subarray|
            if subarray.first == key
                @ivar.delete(subarray)
            end
        end
    end

    def show
        @ivar
    end


end
