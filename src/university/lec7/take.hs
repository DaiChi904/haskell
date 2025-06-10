customTake :: Int -> [Int] -> [Int]
customTake n (x:xs)
    | n <= 0    = []
    | otherwise = [x]++ customTake (n - 1) xs

main :: IO ()
main = do
    input <- getLine
    let (n, x) = read input :: (Int, [Int])
    let res = customTake n x
    print res
