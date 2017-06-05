def ftoc(degrees_f)
  (degrees_f.to_f - 32.0) * (5.0 / 9.0)
end

def ctof(degree_c)
  degree_c * (9.0 / 5.0) + 32
end
