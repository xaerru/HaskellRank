import Data.List

chunks :: Int -> [a] -> [[a]]
chunks n l | length chunk < n = []
           | otherwise = chunk : chunks n (tail l)
           where chunk = take n l

getList :: IO [Int]
getList = map read . words <$> getLine

solve s d m = length $ filter (==d) $ map sum $ chunks m s

main = do
  _   <- getList
  s   <- getList
  [d, m] <- getList
  print $ solve s d m
