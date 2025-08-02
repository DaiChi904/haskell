doubleTwoNumbers :: Double -> Double -> Double
doubleTwoNumbers x y =
    x * 2 + y * 2

main :: IO ()
main = do
    input <- getLine
    let (x, y) = read input :: (Double, Double)

    let res = doubleTwoNumbers x y
    print res
