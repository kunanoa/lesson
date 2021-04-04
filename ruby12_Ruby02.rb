p "ruby".upcase   # 大文字へ変換
p "12".to_i   # 数値型へ変換
p "ruby"[1]   # u
p "hello,ruby,world".split(",")   # 区切り文字で分割し、配列として返す
p 12.to_s   # 文字列へ変換

p 2.next   # +1した値を返す
p 2.pred   # -1した値を返す
p 0.zero?   # ゼロかを判定
p 5.zero?   # ゼロかを判定
p 0.nonzero?   # ゼロではないか判定
p 5.nonzero?   # ゼロではないか判定

def print_func(obj)
  puts "======================"
  p "<<< p: #{obj} >>>"
  puts " <<< puts: #{obj} >>>"
  print " <<< print: #{obj} >>> ※改行されない\n"
  puts "======================"
end
print_func("a")
print_func(1)
print_func(["a", "b"])
print_func({a:"a_name", b:"b_name"})

p 3/3