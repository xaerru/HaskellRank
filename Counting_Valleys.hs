solve a = length $ filter (\x -> fst x == 'U' && snd x == 0) $ zip a $ scanl1 (+) $ map (\x -> if x == 'U' then 1 else -1) a

main = do
  _ <- getLine
  a <- getLine
  print $ solve a
