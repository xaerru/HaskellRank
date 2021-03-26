getList :: IO [Int]
getList = map read . words <$> getLine

solve n k = if x <= 0 then 9 else x
  where
    x = n * k `mod` 9

main = do
  [n,k] <- getList
  print $ solve n k
