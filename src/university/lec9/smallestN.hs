-- 正の整数Nに対して、S(N) を S(N) = ∑(n = 1)(n) = sqrt(n) と定義する。このとき、S(N) > 1000となる最小のNを求める関数 smallestN を作成せよ(scanl1関数を用いよ)。

smallestN :: Int
smallestN = fst . head . dropWhile ((<= 1000) . snd) $
    zip [1..] (scanl1 (+) (map sqrt [1..]))

main :: IO ()
main = do
    print $ smallestN