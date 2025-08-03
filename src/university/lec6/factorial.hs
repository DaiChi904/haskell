factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

main :: IO ()
main = do
  input <- getLine
  let i = read input :: Int
  print(factorial i)
