-- 右図のような直角三角形を考える。
-- a, b, cはすべて整数
-- a, b, cはすべて10以下
-- a + b + c = 24
-- を満たすような直角三角形を求めるプログラムを作ろう。

-- (1)a, b, cはすべて整数で10以下であるようなタプル(a, b, c)を要素とするリストを表示する関数 triples を作成せよ。

-- (2)前問の関数にa^2 + b^2 = c^2およびa + b + c = 24を追加し、所望の直角三角形だけを表示する関数 rightTriangles を作成せよ。その際、重複して同じ直角三角形が表示されないようにせよ。

triples:: [(Int, Int, Int)]
triples = [(a, b, c) | a <- [0..10], b <- [0..10], c <- [0..10]]

rightTriangles:: [(Int, Int, Int)]
rightTriangles = [(a, b, c) | a <- [0..10], b <- [0..10], c <- [0..10], a ^ 2 + b ^ 2 == c ^ 2, a + b + c == 24, a < b, b < c]

main :: IO ()
main = do
    print triples
    print rightTriangles
    