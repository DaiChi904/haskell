-- リストを受け取り、リストの隣り合う要素を組にして、リストとして返す関数 pairs を作成せよ。

pairs :: [Int] -> [(Int, Int)]
pairs xs = zip xs (tail xs)

main :: IO ()
main = do
    let x = [1, 2, 3, 4, 5]
    let res = pairs x
    print res
