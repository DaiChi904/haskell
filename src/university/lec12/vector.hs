-- Vector a型を利用して、ベクトルの内積を計算する関数 innerProd を作成せよ

data Vector a = Vector a a a deriving (Show)

-- Num制約を追加して、パターンマッチを修正
innerProd :: Num a => Vector a -> Vector a -> a
innerProd (Vector x1 y1 z1) (Vector x2 y2 z2) =
  x1 * x2 + y1 * y2 + z1 * z2

main :: IO ()
main = do
  let v1 = Vector 1 2 3
  let v2 = Vector 4 5 6
  print (innerProd v1 v2)
