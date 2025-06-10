customElem :: Int -> [Int] -> Bool
customElem n [] = False
customElem n (x:xs)
    | x == n = True
    | otherwise = customElem n xs

main :: IO ()
main = do
    input <- getLine
    let (n, x) = read input :: (Int, [Int])
    let res = customElem n x
    print res
