def fibs(num)
  (num - 1).times.reduce([0, 1]) { |a, _| a << a[-2] + a[-1] }[..num]
end

def fibs_rec(num)
  return (0..num).to_a if (0..1).include?(num)

  arr = fibs_rec(num - 1)
  arr << arr[-2] + arr[-1]
end
