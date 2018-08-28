#28
def sum_array(a)
  n = 0
  a.each {|i| n += i}
  return a, n
end

#122
def rps(u)
  r = 'rock'
  p = 'paper'
  s = 'scissors'
  l = 'lose'
  w = 'win'
  o = [r, p, s]
  c = o.sample
  puts c
  if (u == c)
    puts 'tie'
  end
  case u
    when r
      c == p ? l : w
    when p
      c == s ? l : w
    when s
      c == r ? l : w
  end
end

#66
def fiz_buz
  (1..100).each do |n| 
    if n % 5 == 0 && n % 3 == 0
      puts "FIZZBUZZ"
    elsif n % 3 == 0 
      puts "FIZZ"
    elsif n % 5 == 0 
      puts "BUZZ"
    else
      puts n
    end
  end
end

#26
def multiples(n, m)
  (n..m).each { |x| puts n * x }  
end

#77
def cipher(s,n)
  a = ('a'..'z').to_a
  s.chars.map {|x| a[a.find_index(x.downcase) + n]}.join
end

#53
def string_counter(s, o)
  s.each_char.each_cons(o.size).map(&:join).count(o)
end

#32
def mixed_pairs(a)
  n = []
  a.each do |i| 
    n << i.reverse
  end
  n
end

#112
def love_test(s, o)
  s = s.gsub(/\s+/, "")
  o = o.gsub(/\s+/, "")
  c = []
  s.chars.each {|x|
    if o.include?(x) 
      c << x
    end}
  (s.length + o.length) / c.uniq.length
end

#82
def shopping_list(a)
  n = a.map{|i| i.downcase}.uniq.sort_by(&:downcase)
  h = n.map.with_index { |x, i| [i, x] }.to_h
end

#372
# puts "Sum"
# puts sum_array([1,2,3])
# puts "Multiple"
# puts multiples(2,4)
# puts "Cipher"
# p cipher('AbcD', 1)
# puts string_counter('aaabbbbbbcccccaaa', 'aa')
# p mixed_pairs([[1,2],[3,4]])
# p love_test('I love this code', 'This code loves me')
p shopping_list(['Milk', 'Eggs', 'Apples', 'Toast', 'Eggs'])