data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

treeElem:: Ord a => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
  | x == a = True
  | x > a  = treeElem x right
  | x < a  = treeElem x left

main :: IO ()
main = do
    let tree = Node 14 (Node 6 (Node 1 EmptyTree (Node 3 EmptyTree EmptyTree)) (Node 10 (Node 8 EmptyTree EmptyTree) EmptyTree)) EmptyTree
    print (treeElem 14 tree)
    print (treeElem 15 tree)
    print (treeElem 6 tree)