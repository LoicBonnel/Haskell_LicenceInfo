-- Fonction pour vérifier si une année est divisible par 400 et par 1000
estDivisiblePar400Et1000 :: Int -> Bool
estDivisiblePar400Et1000 annee = (annee `mod` 400 == 0) && (annee `mod` 1000 == 0)

main :: IO ()
main = do
    putStrLn "Entrez une année : "
    anneeStr <- getLine
    let annee = read anneeStr :: Int
    if estDivisiblePar400Et1000 annee
        then putStrLn $ show annee ++ " est divisible par 400 et par 1000."
        else putStrLn $ show annee ++ " n'est pas divisible par 400 et par 1000."


