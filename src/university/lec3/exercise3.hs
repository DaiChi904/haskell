-- 整数を要素とするリストを受け取り、10未満のすべての奇数を “Bling!”に置き換え、10以上のすべての奇数を“Bang!”に置き換え、数が奇数でなければリストから削除したリストを返す関数 blingBang を作成せよ。

blingBang :: [Int] -> [String]
blingBang [] = []
blingBang (x:xs)
    | odd x && x < 10  = "Bling!" : blingBang xs
    | odd x && x >= 10 = "Bang!"  : blingBang xs
    | otherwise        = blingBang xs

main :: IO ()
main = do
    let res = blingBang [1,2,3,10,11,12,15]
    print res
