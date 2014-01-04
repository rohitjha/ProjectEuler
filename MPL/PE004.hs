main = putStrLn $ show $ maximum [ x | y <- [999,998..100], z <- [999,998..y], let x = y*z, let s = show x, s == reverse s ]
