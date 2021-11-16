    --Лабораторна робота номер 2
    --Студента групи кн-31 підгрупа 2
    --Кульковця Віктора Васильовича             
    --Варіант 3
    --Мета: Набути досвiду визначення рекурсивних функцiй, використання механiзму зiставлення зi зразком i роботи з кортежами та списками.

    -------------------
    -- Перша частина
    --Визначте вказанi функцiї в кожному з завдань: а) без застосування, б) з застосуванням вбудованих функцiй.
    --Знайти n-й справа елемент списку.
    --BEZ

    r [] = []
    r (x:xs) = r xs ++ [x]
    nth _ [] = Nothing
    nth a (x:xs) 
        | (a == 1) = Just x 
        | otherwise = nth (a-1) xs
    nel1 n a1 = nth n (r(a1))
    --Z
    nel2 n a = last (take n (reverse(a)))


    -- Друга частина 
    -- Циклiчний правий зсув списку на n позицiй.
    --BEZ
    rs :: Int -> [a] -> [a]
    rs 0 x = x
    rs _ []= []
    rs 1 (x:xs)= xs ++ [x]
    rs n x = rs (n-1) (rs 1 x)
    --Z
    cy :: Int -> [a] -> [a]
    cy n xs = let (a, b) = splitAt (length xs - n) xs
                    in b ++ a

    -- Висновок: на даній лабораторній роботі було набуто досвіду з визначенням рекурсивних функцій, використання механiзму зiставлення зi зразком i роботи з кортежами та списками.