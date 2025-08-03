-- aクラスとbクラスの学生に対して小テストを実施した結果を格納したタプル(クラスと得点の組)を要素とするリストを考える。
-- 検索キー(’a’または’b’)と上記のリストを受け取り、検索キーに対応する値を取り出してリストとして表示する関数 find を作成せよ。

find :: Char -> [(Char, Int)] -> [Int]
find key scores = [s | (k, s) <- scores, k == key]

main :: IO ()
main = do
    let scores = [('a', 85), ('b', 60), ('a', 70), ('a', 100), ('b', 55), ('b', 50)]
    let resA = find 'a' scores
    print resA
    let resB = find 'b' scores
    print resB
