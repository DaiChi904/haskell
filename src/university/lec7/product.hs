customProduct :: [Int] -> Int
customProduct [] = 1
customProduct (x:xs) = customProduct xs * x

main :: IO ()
main = do
    input <- getLine
    let l = read input :: [Int]
    let res = customProduct l
    print(res)
