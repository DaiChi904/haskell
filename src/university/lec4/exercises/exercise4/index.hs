isSorted :: Int[] -> Bool

isSorted =

pairs :: [Int] -> [Int]
pairs xs = do
    let res = zip xs (tail xs)

    return res