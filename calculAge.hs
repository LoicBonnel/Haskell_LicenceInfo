-- Définition des accélérations en années par an pour chaque planète
acceleration :: String -> Float
acceleration "Mercure" = 0.2408467
acceleration "Venus" = 0.61519726
acceleration "Terre" = 1.0
acceleration "Mars" = 1.8808158
acceleration "Jupiter" = 11.862615
acceleration "Saturne" = 29.447498
acceleration "Uranus" = 84.016846
acceleration "Neptune" = 164.79132
acceleration _ = 0.0 -- Si la planète n'est pas trouvée, on renvoie 0

-- Fonction pour calculer l'accélération de l'âge d'un homme en fonction de la planète
accelerationAge :: String -> Float -> Float
accelerationAge planet age = age * (acceleration planet)

main :: IO ()
main = do
    putStrLn "Entrez le nom de la planète (Mercure, Venus, Terre, Mars, Jupiter, Saturne, Uranus, Neptune) : "
    planet <- getLine
    putStrLn "Entrez l'âge de l'homme en années : "
    ageStr <- getLine
    let age = read ageStr :: Float
    let acceleration = accelerationAge planet age
    putStrLn $ "L'accélération de l'âge sur " ++ planet ++ " est de " ++ show acceleration ++ " années par an."
