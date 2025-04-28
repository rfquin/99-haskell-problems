-- Question 1
myLast :: [a] -> a
myLast (x:[]) = x
myLast (x:xs) = myLast xs

-- Question 2
myButLast :: [a] -> a
myButLast (x:y:[]) = x
myButLast (_:xs) = myButLast xs

-- Question 3
elementAt :: [a] -> Int -> a
elementAt (x:_) 0 = x
elementAt (_:xs) a = elementAt xs (a-1)

-- Question 4
myLength :: [a] -> Int
myLength = sum . map (\x -> 1)
-- Alternatively, myLength = foldl (\_ acc -> acc + 1) 0

-- Question 5
myReverse :: [a] -> [a]
myReverse (x:[]) = [x]
myReverse (x:xs) = myReverse xs ++ [x]

-- Question 6
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == myReverse xs
