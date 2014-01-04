triplets l = [[a,b,c] | m <- [2..limit],
                        n <- [1..(m-1)], 
                        let a = m^2 - n^2, 
                        let b = 2*m*n, 
                        let c = m^2 + n^2,
                        a+b+c==l]
    where limit = floor . sqrt . fromIntegral $ l

main = putStrLn $ show $ product $ head $ (triplets 1000)
