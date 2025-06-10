customLength :: [Int] -> Int
customLength [] = 0
customLength (_:xs) = 1 + customLength xs

main :: IO ()
main = do
    input <- getLine
    let l = read input :: [Int]
    let res = customLength l
    print(res)
