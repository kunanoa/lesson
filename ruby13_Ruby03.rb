# if 条件式
#   条件式が正しい時の処理
# elsif
#   条件式が正しい時の処理
# else
#   それ以外の時の処理
# end

num = 1
if num == 2
  puts "ok1"
elsif num != 3
  puts "ok2"
else 
  puts "no"
end

# 演算子
# > => < =< == !=

puts 3 > 0
puts 3 < 0

# if and && ||
n = 4
if n >= 3 && n >= 5
  puts "ok3"
end

if n <= 1 || n >= 4
    puts "ok4"
end

# for
for num in 1..4 do
  puts "#{num}. it's difficult.."
end

# each
[1,2,3,4].each do |num|
  puts num
end

# while
num = 0
while num < 5 do
  puts num
  num += 1
end

n = 5
# 課題
# 1
if n == 3
  puts "nは3です"
end

# 2
if n == 3 || n == 4
  puts "3、4のどちらかです"
end

# 3
if n == 3
  puts "nは3です"
elsif n == 4
  puts "nは4です"
end

# 4
for num in 1..5
  puts "こんにちは"
end

# 5
[1,2,3,4,5].each do |num|
  puts num
end

# 6
if num == 2
  puts "2です"
elsif num == 3
  puts "3です"
else
  puts "それ以外です"
end
