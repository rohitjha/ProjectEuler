main = putStrLn $ show $ foldl1 (\x y -> lcm x y) [1..20]
