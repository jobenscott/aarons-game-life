a = [1, 2, 3, 4]
b = [5, 6, 7, 8]
c = [9, 10, 11, 12]
d = [13, 14, 15, 16]

new_a = []
new_b = []
new_c = []
new_d = []

new_a << a.last()
new_a << b.last()
new_a << c.last()
new_a << d.last()
new_b << a.last(2).first
new_b << b.last(2).first
new_b << c.last(2).first
new_b << d.last(2).first
new_c << a.last(3).first
new_c << b.last(3).first
new_c << c.last(3).first
new_c << d.last(3).first
new_d << a.last(4).first
new_d << b.last(4).first
new_d << c.last(4).first
new_d << d.last(4).first

p a
p b
p c
p d
puts "Converted to"
sleep 0.5
puts "."
sleep 0.5
puts "."
sleep 0.5
puts "."
p new_a
p new_b
p new_c
p new_d
