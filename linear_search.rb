def linear_seach(value)
    list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    list.each do | num |
        if num == value
            return num
        end
    end
end

p linear_seach(5)