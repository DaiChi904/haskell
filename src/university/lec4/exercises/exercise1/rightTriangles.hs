main :: IO ()
main = do
  let result = [(a, b, c) | a <- [0..10], b <- [0..10], c <- [0..10], a^2 + b^2 == c^2, a + b + c == 24]
  print result
