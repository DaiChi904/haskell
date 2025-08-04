-- product関数は、リストを受け取り、その要素の積を返す関数である。
-- (1) product関数をfoldl関数を用いてproductVer1という名前で自作せよ。
-- (2) product関数をfoldl1関数を用いてproductVer2という名前で自作せよ。

productVer1 :: [Int] -> Int
productVer1 [] = 1
productVer1 (x:xs) = foldl (\acc x -> acc * x) 1 xs

productVer2 :: [Int] -> Int
productVer2 [] = 1
productVer2 (x:xs) = foldl1 (\acc x -> acc * x) xs

main :: IO ()
main = do
    print $ productVer1 [1, 2, 3, 4, 5]
    print $ productVer2 [1, 2, 3, 4, 5]