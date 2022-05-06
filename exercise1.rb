arr = []

(0..4).each do |item|
    print "Nhap a[#{item}]:"
    value = gets.chomp || ""
    arr << value.to_i
end

number_squared = Proc.new{|n| n*n}

squared_arr = arr.map do |i|
    (i == 6 || i == 7) ? i : number_squared[i]
end

puts "Mang: #{arr}"
puts "Tong trong mang: #{arr.sum}"
puts "Binh phuong phan tu trong mang: #{squared_arr}"
