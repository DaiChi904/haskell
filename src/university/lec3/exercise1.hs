-- 50から100までの整数のうち、7で割った余りが3であるすべての整数を要素とするリストをリスト内包表記を用いて作成せよ。

exercise1 :: [Int]
exercise1 = [x | x <- [50..100], x `mod` 7 == 3]

main :: IO ()
main = do
    let res = exercise1
    print res
