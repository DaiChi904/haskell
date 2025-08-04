-- reverse関数は、リストを受け取り、逆順にしたものを返す関数である。
-- reverse関数をfoldl関数を用いてreverse’という名前で自作せよ。

reverseWithFoldl :: [a] -> [a]
reverseWithFoldl [] = [] 
reverseWithFoldl (x:xs) = foldl (\acc x -> x : acc) [] (x:xs)

main :: IO ()
main = do
    let x = [1, 2, 3, 4, 5]
    let res = reverseWithFoldl x
    print res
