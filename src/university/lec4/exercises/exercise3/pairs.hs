main = do
    let xs = [1, 2, 3, 4]

    let res = zip xs (tail xs)

    print res