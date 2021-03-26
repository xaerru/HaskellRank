import Data.List

main = interact $ unlines . map show . sort . map (\x -> read x :: Integer) . tail . words
