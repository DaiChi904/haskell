customZipWith :: (Int -> Int -> Int) -> [Int] -> [Int] -> [Int]
customZipWith func _ [] = []
customZipWith func [] _ = []
customZipWith func (x:xs) (y:ys) =
    [func x y]++ customZipWith func xs ys

main :: IO ()
main = do
    input <- getLine
    let func = (+)
    let (x, y) = read input :: ([Int], [Int])
    let res = customZipWith max x y
    print res
