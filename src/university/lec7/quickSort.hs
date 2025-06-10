quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort [x] = [x]
quickSort (x:xs) = do
    let left = filter (< x) xs
    let right = filter (>= x) xs
    quickSort left ++ quickSort [x] ++ quickSort right

main :: IO ()
main = do
    input <- getLine
    let x = read input :: [Int]
    let res = quickSort x
    print res
