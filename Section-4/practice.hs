-- q1
halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

-- q2
third :: [a] -> a
third (x:y:z:_) = z

-- q3
safetail :: [a] -> [a]
-- a
--safetail xs = if null xs then [] else tail xs
-- b
-- safetail xs | null xs = []
--             | otherwise = tail xs
-- c
safetail [] = []
safetail (_:xs) = xs

-- q4
(||) :: Bool -> Bool -> Bool
False || False = False
_ || _ = True

-- q7
mult :: Int -> Int -> Int -> Int
mult = \x -> (\y -> (\z -> x * y * z))

-- q8
luhnDouble :: Int -> Int
luhnDouble x | x * 2 > 9 = 2 * x - 9
             | otherwise = 2 * x

luhn :: Int -> Int -> Int -> Int -> Bool 
luhn a b c d = (a + b + c + d) `mod` 10 == 0