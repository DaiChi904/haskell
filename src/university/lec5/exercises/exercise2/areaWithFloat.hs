main :: IO ()
main = do
    input <- getLine
    let r = read input :: Float
    let res = r * r * pi
    putStrLn $ show res
