solve x = product [1..x]

main = do
  n <- getLine
  let r = read n :: Integer
  print $ solve r
