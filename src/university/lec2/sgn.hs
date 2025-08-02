sgn :: Double -> Int
sgn x
    | x > 0 = 1
    | x < 0 = -1
    | otherwise = 0

main :: IO ()
main = do
    input <- getLine
    let x = read input :: Double

    let res = sgn x
    print res
