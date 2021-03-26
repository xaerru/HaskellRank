import Data.List
import Data.Maybe
import Control.Monad

getList :: IO [Int]
getList = map read . words <$> getLine

solve :: Int -> [Int] -> [Int] -> Int
solve b keyboards drives = fromMaybe (-1) $ listToMaybe $ sortBy (flip compare) $ filter (<= b) $ liftM2 (+) keyboards drives

main = do
  [b,_,_]   <- getList
  keyboards <- getList
  drives    <- getList
  print $ solve b keyboards drives
