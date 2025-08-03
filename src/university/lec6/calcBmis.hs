calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs =
    [bmi w h | (w, h) <- xs]
    where
        bmi w h = h / ((w / 100) ^ 2)

main :: IO ()
main = do
    input <- getLine
    let xs = read input :: [(Double, Double)]
    let res = calcBmis xs
    print(res)
