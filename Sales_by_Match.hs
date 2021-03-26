import Data.List
import Control.Arrow

getList :: IO [Int]
getList = map read . words <$> getLine

solve :: [Int] -> Int
solve = sum . map (((`div` 2) . fst) . (length &&& head)) . group . sort

main = do
  [_] <- getList
  a   <- getList
  print $ solve a
