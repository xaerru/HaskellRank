import Data.List

getList :: IO [Int]
getList = map read . words <$> getLine

solve a = minimum $ map head $ filter (\x -> length x == m) r
  where
    r = sortOn length $ group $ sort a
    m = maximum $ map length r

main = do
  [_] <- getList
  a   <- getList
  print $ solve a
