-- 文字列もリストであるから、文字列の処理にもリスト内包表記を使うことができる。アルファベットの文字列を受け取り、すべての小文字を取り除く関数 uppercaseを作成せよ。その際には、 elem 関数を利用せよ。

uppercaseOnly :: String -> String
uppercaseOnly xs = [x | x <- xs, x `elem` ['A'..'Z']]

main :: IO ()
main = do
    let str = "Gunma University"
    let res = uppercaseOnly str
    print res
