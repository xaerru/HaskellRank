import Control.Monad

getList :: IO [Int]
getList = map read . words <$> getLine

solve k a = if k > length (filter (<=0) a) then "YES" else "NO"

main = do
  [n] <- getList
  forM_ [1..n] $ \_ -> do
    [_, k] <- getList
    a      <- getList
    putStrLn $ solve k a
