getList :: IO [Int]
getList = map read . words <$> getLine

excludeNth n xs = left ++ tail right
  where
    (left, right) = splitAt n xs

solve :: Int -> [Int] -> Int -> Maybe Int
solve k bill b
  | b > actualPrice = Just (b - actualPrice)
  | otherwise       = Nothing
  where
    actualPrice = sum (excludeNth k bill) `div` 2


main = do
  [_,k] <- getList
  a     <- getList
  [b]     <- getList
  putStrLn $ maybe "Bon Appetit" show $ solve k a b
