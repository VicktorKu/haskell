    --Лабораторна робота номер 1.
    --Студента групи кн-31 підгрупа 2
    --Кульковця Вgit pull origin branchname --allow-unrelated-historiesіктора Васильовича
    --Варіант 3
    --Мета: Ознайомитися із основами синтаксису мови haskell, набути практичних навичок

    -------------------
    -- Перша частина
    --Наведiть приклади виразiв вказаного типу. Кожен список має мiстити кiлька елементiв. Перегляньте тип прикладiв, як їх визначає ghci. Про-коментуйте.
    --[([Bool],[String],[Double])]

    c = [([True,False],["BTC"],[5.14])]

    -- Друга частина 
    -- Функцiя приймає двi логiчнi величини (Bool) i повертає їх у формi впорядкованої за спаданням двiйки (кортежа).

    sortLogicOrder :: Bool -> Bool -> (Bool, Bool)
    sortLogicOrder x y = if x > y then (x, y) else (y, x)

    -- Висновок
    -- На даній лабораторній роботі ми ознайомитись з основними типами даних мови Haskell.
    -- Навчилися працювати з структурою та функцiями Glasgow Haskell Compiller. Набули навичок роботи з ghci