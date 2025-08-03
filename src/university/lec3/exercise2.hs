-- 10から20までの整数のうち、13、19でないすべての整数を要素とするリストをリスト内包表記を用いて作成せよ。

exercise2 :: [Int]
exercise2 = [x | x <- [10..20], x /= 13, x /= 19]

main :: IO ()
main = do
    let res = exercise2
    print res
