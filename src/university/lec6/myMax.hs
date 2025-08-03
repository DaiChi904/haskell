myMax :: Int -> Int -> IO ()
myMax x y
    | x > y     = print x
    | x < y     = print y
    | otherwise = putStrLn "same value"

main :: IO ()
main = do
  input1 <- getLine
  let x = read input1 :: Int
  input2 <- getLine
  let y = read input2 :: Int
  
  myMax x y
