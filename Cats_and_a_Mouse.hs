import Data.List.Split
import Control.Monad

parse :: [[String]] -> [[Int]]
parse = map $ map read

solve :: Int -> Int -> Int -> String
solve a b c
  | x == y = "Mouse C"
  | x <  y = "Cat A"
  | x >  y = "Cat B"
  where
   x = abs $ a - c
   y = abs $ b - c

main = interact $ unlines . map (ap (liftM2 solve (!! 0) (!! 1)) (!! 2)) . parse . chunksOf 3 . tail . words
