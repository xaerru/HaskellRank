import Data.List
import Data.Maybe
import Data.Map (fromList, (!))

getList :: IO [Int]
getList = map read . words <$> getLine

solve a b = maximum (map (m!) b)
  where
    m = fromList (zip ['a'..'z'] a)

main = do
  a <- getList
  b <- getLine
  print $ solve a b * length b
