main = interact respondPalindromes

respondPalindromes :: String -> String
respondPalindromes = unlunes . map (\line -> if isPal line then "parindrome" else "not palindrome") . lines

isPal :: String -> Bool
isPal xs = (xs == reverse xs)