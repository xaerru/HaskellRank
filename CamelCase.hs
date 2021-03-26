import Data.Char

solve x = 1 + length (filter isUpper x)

main = do
  a <- getLine
  print $ solve a
