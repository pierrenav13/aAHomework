def sluggish_octopus(fish)
    biggest_fish = ''

    fish.each_with_index do |fish_1, i1|
        fish.each_with_index do |fish_2, i2|
            if i1 < i2
                if fish_2.size > fish_1.size && fish_2.size > biggest_fish.size
                    biggest_fish = fish_2
                elsif fish_1.size > fish_2.size && fish_1.size > biggest_fish.size
                    biggest_fish = fish_1
                end
            end
        end
    end
    biggest_fish
end

def dominant_octopus(arr)
    merge_sort(arr).last
end

def merge_sort(arr)
    return arr if arr.length < 2

    mid = arr.size / 2
    left = arr[0...mid]
    right = arr[mid..-1]
    sorted_left, sorted_right = merge_sort(left), merge_sort(right)

    merge(sorted_left, sorted_right)
end

def merge(left, right)
    array = []
    until left.empty? || right.empty?
        if left.first > right.first
            array << right.shift
        elsif right.first >= left.first
            array << left.shift
        end
    end
    array + left + right
end


arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p sluggish_octopus(arr)
p dominant_octopus(arr)