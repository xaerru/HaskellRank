import Control.Monad
import Data.Bits

getList :: IO [Int]
getList = map read . words <$> getLine

solve n = (1 `shift` (((n+1) `div` 2) + 1)) - (1 + (n `mod` 2))

main = do
  [n] <- getList
  forM_ [1..n] $ \_ -> do
    [a] <- getList
    print $ solve a
