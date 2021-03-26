getList :: IO [Int]
getList = map read . words <$> getLine

solve a b = length $ filter (\x -> foldl1 gcd b `mod` x == 0) $ takeWhile (<= foldl1 gcd b) $ map (* foldl1 lcm a) [1..]

main = do
  [n,m] <- getList
  a     <- getList
  b     <- getList
  print $ solve a b
