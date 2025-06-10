oyatsu :: Int -> Int -> Int -> Int
oyatsu x y z
    let sum = x * 15 + y * 50 + z * 33
    in if sum > 150
        then print "NG"
        else print "OK"

main :: IO ()
main = do
    input <- getLine
    let [x, y, z] = map read (words input) :: [Int]
    let res = oyatsu x y z
