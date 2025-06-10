main :: IO ()
main = do
  let result = [(a, b, c) | a <- [0..10], b <- [0..10], c <- [0..10]]
  print result
