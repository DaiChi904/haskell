customReverse :: [Int] -> [Int]
customReverse [] = []
customReverse (x:xs) = customReverse xs ++ [x]

main :: IO ()
main = do
    input <- getLine
    let l = read input :: [Int]
    let res = customReverse l
    print(res)
