-- 正の整数nを受け取り、最初のn個の奇数を返す関数oddsをラムダ式を用いて作成せよ。

odds :: Int -> [Int]
odds = \x -> filter (\y -> y `mod` 2 == 1) [x | x <- [1..x*2]]

main :: IO ()
main = do
    input <- getLine
    let x = read input :: Int
    let res = odds x
    print res
