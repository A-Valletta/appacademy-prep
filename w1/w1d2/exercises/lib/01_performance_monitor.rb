def measure(n = 1)
  start = Time.now
  n.times { yield }
  final = Time.now - start
  final.to_f / n
end
