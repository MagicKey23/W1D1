class Array

def my_each(&prc)
    i = 0 
    while i < self.length
    prc.call(self[i])
    i += 1
    end
    self
end

def my_select(&prc)
 i = 0 
 new_arr = []
 while i < self.length 
    if prc.call(self[i])
        new_arr << self[i]
    end
    i += 1
 end
 new_arr
end

def my_reject(&prc)

 i = 0 
 new_arr = []
 while i < self.length)
    if !(prc.call(self[i]))
        new_arr << self[i]
    end
    i += 1
 end
 new_arr
end

def my_any?(&prc)
i = 0 

while i < self.length
    if prc.call(self[i])
        return true
    end
    i +=1 
end
false
end

def my_flatten(data)
return [data] if !data.instance_of(Array)

flatened = []
arr.each do |e|
    flatenned  += my_flatten(e)
end

flatened

end

def my_zip(*groups)
new_arr = Array.new(self.length) {Array.new(self.length, nil)}

groups.unshift(self)

groups.each_with_index do |group, idx|
    if groups[idx] < self.length
        until groups[idx] == self.legnth
        groups[idx] += [nil]
        end
    end

end

row = 0 
column = 0 

while row < groups.length
    while column  < groups[row].length
        new_arr[column][row] = groups[row][column]
        column += 1
    end
    column = 0 
    row += 1
end

new_arr
end

def my_rotate(turn = 1)
    if turn >= 0 
        turn.times do |i|
        move_ele = self.shift
        self.push(move_ele)    
        end
    else 
        turn *= -1  
        turn.times do |i|
        move_ele = self.pop
        self.unshift(move_ele)    
        end              
    end
    return self
end

def my_join(combine_with = "")
    raise "error" if !combine_with.instance_of(String)
    combined = ""
    self.each do |e|
    combined += e.to_s + ""
    end
    combined
end

def my_reverse
    return self if self.length <= 1
    i = self.length-1 
    reversed  = []
    while i > 0 
        reversed << self[i]
        i -= 1
    end
    reversed
end



end
