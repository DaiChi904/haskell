customReplicate :: Int -> Int -> [Int]
customReplicate n x
    | n <= 0    = []
    | otherwise = x : customReplicate (n - 1) x

main :: IO ()
main = do
    input <- getLine
    let (n, x) = read input :: (Int, Int)
    let res = customReplicate n x
    print res
