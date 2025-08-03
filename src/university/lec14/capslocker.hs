import qualified Data.Char as DC

main = do
    contents <- getContents
    putStrLn $ map DC.toUpper contents 

shortLinesOnly :: String -> [String]
shortLinesOnly lines =
    
