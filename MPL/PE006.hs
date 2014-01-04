main = putStrLn $ show $ abs $ (sum [ x*x | x <- [1..100] ]) - ((sum [ x | x <- [1..100] ]) ^ 2)
