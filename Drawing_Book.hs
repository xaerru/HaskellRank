import Data.List.Split

getList :: IO [Int]
getList = map read . words <$> getLine

solve :: Int -> Int -> Int
solve n p = min (op r) (op $ reverse r)
  where
    r = [1] : chunksOf 2 [2..n]
    op = length . takeWhile (notElem p)

main = do
  [n] <- getList
  [p] <- getList
  print $ solve n p
