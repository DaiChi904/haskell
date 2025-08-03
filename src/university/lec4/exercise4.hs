-- and関数は、リストのすべての要素が True で構成される場合に True を返し、少なくとも1つの要素が False である場合は False を返す。
-- このand関数と問3で作成した関数 pairs を利用して、整数を要素とするリストを受け取りそれが昇順に並んでいるか否かを判定する関数 sorted を作成せよ。

pairs :: [Int] -> [(Int, Int)]
pairs xs = zip xs (tail xs)

sorted :: [Int] -> Bool
sorted [] = True
sorted xs = and [x <= y | (x, y) <- pairs xs]

main:: IO ()
main = do
    let x = [1, 2, 3, 4, 5]
    let y = [1, 2, 4, 3, 5]
    let res = sorted x
    print res
    let res = sorted y
    print res