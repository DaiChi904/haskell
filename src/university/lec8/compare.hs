customCompare :: Int -> Int -> String
customCompare x y
    | x > y     = "GT"
    | x < y     = "LT"
    | otherwise = "EQ"

main :: IO ()
main = do
    input <- getLine
    let (x, y) = read input :: (Int, Int)
    let res = customCompare x y
    print res
