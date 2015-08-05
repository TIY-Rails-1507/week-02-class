a1 = [0,1,2,3,4,5,6,7,8,9,10]
index = 0

# while(index < a1.size)
# 	puts a1[index]
# 	index += 1
# end

# a1.each{|i| puts i if i.odd?}
a1.select{|i|i.odd?}.size
a1.select{|i|i.even?}.size

# Hashes now.