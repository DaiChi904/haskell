import Data.List (find)
import Data.Char (digitToInt)

digitSum :: Integer -> Int
digitSum n = sum (map digitToInt (show n))

firstNum :: Int -> Maybe Integer
firstNum n
  | n <= 0    = Nothing
  | otherwise = find (\x -> digitSum x == n) [1..]
