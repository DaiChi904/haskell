import Data.List

data Section = Section { timeA:: Int, timeB:: Int, timeC:: Int} deriving (Show)

type RoadSystem = [Section]

data Label = A | B | C deriving (Show)

type Path = [(Label, Int)]

main :: IO ()
main = do
    contents <- getContents
    let threes = groupsOf 3 (map read $ lines contents)
        roadSystem = map (\[a, b, c] -> Section a b c) threes
        path = optionalPath roadSystem
        pathString = concat $ map (show . fst) path
        pathTime = sum $ map snd path

    putStrLn $ "The best path to take is: " ++ pathString
    putStrLn $ "Time taken is: " ++ show pathTime

groupsOf :: Int -> [a] -> [[a]]
groupsOf _ [] = []
groupsOf n xs = take n xs : groupsOf n (drop n xs)

roadStep :: (Path, Path) -> Section -> (Path, Path)
roadStep (pathA, pathB) (Section a b c) =
    let totalTimeA = sum (map snd pathA)
        totalTimeB = sum (map snd pathB)
        forwardTimeToA = totalTimeA + a
        crossTimeToA = totalTimeB + b + c
        backwardTimeToB = totalTimeA + b
        crossTimeToB = totalTimeB + a + c

        newPathToA = if forwardTimeToA <= crossTimeToA
                        then (A, a) : pathA
                        else (C, c) : (B, b) : pathB
        newPathToB = if backwardTimeToB <= crossTimeToB
                        then (B, b) : pathB
                        else (C, c) : (A, a) : pathA

    in (newPathToA, newPathToB)

optionalPath :: RoadSystem -> Path
optionalPath roadSystem =
    let (bestAPath, bestBPath) = foldl roadStep ([], []) roadSystem
    in if sum (map snd bestAPath) <= sum (map snd bestBPath)
        then reverse bestAPath
        else reverse bestBPath
