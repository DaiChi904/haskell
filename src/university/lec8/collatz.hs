collatz :: Int -> [Int]
collatz n
    | n <  0    = []
    | n == 1    = [1]
    | even n    = n : collatz (n `div` 2)
    | otherwise = n : collatz (n * 3 + 1)


main :: IO ()
main = do
    input <- getLine
    let x = read input :: Int
    let res = collatz x 
    print res
