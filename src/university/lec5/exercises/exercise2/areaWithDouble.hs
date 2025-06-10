main :: IO ()
main = do
    input <- getLine
    let r = read input :: Double
    let res = r * r * pi
    putStrLn $ show res
