-- 2つのリスト [2,5,10], [8,10,11]に対して、これらのリストの要素のすべての組み合わせの積の中で50より大きなものを要素とするリストを作成せよ。

targetFunc:: [Int] -> [Int] -> [Int] 
targetFunc xl yl = moreThanFiftyOnly $ multipler xl yl

multipler:: [Int] -> [Int] -> [Int]
multipler xl yl = [x * y | x <- xl, y <- yl]

moreThanFiftyOnly :: [Int] -> [Int]
moreThanFiftyOnly xl = [x | x <- xl, x >= 50]

main :: IO ()
main = do
    let list1 = [2, 5, 10]
    let list2 = [8, 10, 11]
    let res = targetFunc list1 list2
    print res
