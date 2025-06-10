main k = do
  let xs = [("a", 85), ("b", 80)]

  print [v | (_k, v) <- xs, k == _k]
