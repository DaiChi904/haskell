-- (1) 円の半径を受け取り、円の面積を返す関数 area を作成せよ。ただし、関数の型宣言は Float -> Float と設定せよ。円周率は pi を用いること。

-- (2) 今度は関数の型宣言を Double -> Double と設定し、円の半径を受け取り、円の面積を返す関数 area’ を作成せよ。

-- (3) 上記の二つの関数を実行して、結果の違いを確認せよ。

areaFloat :: Float -> Float
areaFloat r = pi * r ^ 2

areaDouble :: Double -> Double
areaDouble r = pi * r ^ 2

main :: IO ()
main = do
    let fr = 3.34 :: Float
    let dr = 3.34 :: Double
    print $ areaFloat fr
    print $ areaDouble dr
