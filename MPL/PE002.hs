import MPL.NumberTheory.Fibonacci

main = putStrLn $ show $ sum [ x | x <- fibSeries 33, x < 4000000, even x ]
