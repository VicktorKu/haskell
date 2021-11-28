    --Лабораторна робота номер 5
    --Студента групи кн-31 підгрупа 2
    --Кульковця Віктора Васильовича             
    --Варіант 3
    
    import System.Directory.Internal.Prelude (getArgs)

    removeDuplicates :: Eq a => [a] -> [a]
    removeDuplicates = foldl (\seen x -> if x `elem` seen
                                         then seen
                                         else seen ++ [x]) []

    f :: [Int] -> [String]
    f = map show

    main :: IO ()
    main = do 
    --read from console
    input_array <- getLine 
    let parsed_array = map read $ words input_array :: [Int]

    --write in console
    print ( removeDuplicates parsed_array )

    --read from file
    contents <- readFile "input.txt" 
    let parsed_from_file = map read $ words contents :: [Int] 
    print ( removeDuplicates parsed_from_file )

    --write into file
    let output = removeDuplicates parsed_from_file
    writeFile "output.txt" (concat (f output))

    -- Тестування
    -- У файлі для введення: 3 3 3 5 5 5 12 12 12 12
    -- Результат у файлі для виведення: 3 5 12


    -- Висновок: На даній лабораторній роботі ми навчилися працювати з потоками введення та виведення у консолі та файлах