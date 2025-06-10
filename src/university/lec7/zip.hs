customZip :: [Int] -> [Int] -> [(Int, Int)]
customZip _ [] = []
customZip [] _ = []
customZip (x:xs) (y:ys)
    = [(x, y)]++ customZip xs ys

main :: IO ()
main = do
    input <- getLine
    let (x, y) = read input :: ([Int], [Int])
    let res = customZip x y
    print(res)
