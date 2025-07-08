data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

treeInsert:: Ord a => a -> Tree a -> Tree a
treeInsert x EmptyTree = Node x EmptyTree EmptyTree
treeInsert x (Node a left right)
  | x == a = Node x left right
  | x > a  = Node a left (treeInsert x right)
  | x < a  = Node a (treeInsert x left) right

main :: IO ()
main = do
  let values = [8, 3, 10, 1, 6, 14]
  let tree = foldr treeInsert EmptyTree values
  print tree
