    --Лабораторна робота номер 5
    --Студента групи кн-31 підгрупа 2
    --Кульковця Віктора Васильовича             
    --Варіант 3
    
import System.Directory.Internal.Prelude (getArgs)
import Data.Char(toUpper)
import Distribution.Fields.LexerMonad (getInput)
factors n = [x | x <- [1..n], mod n x == 0]
showBool :: Bool -> String
showBool = map toUpper . show
prime n = showBool(factors n == [1,n])

main :: IO ()
main = do
   putStrLn "Please input a number."
   inputjar <- getLine 
   let x = (read inputjar :: Int)
   print (prime x)

    --from console write into file
main1 = do
   putStrLn "Please input a number."
   inputjar <- getLine 
   let x = (read inputjar :: Int)
   writeFile "output.txt" (prime x)
    --from file write into file
main2=do
    inputjar<-readFile "input.txt"
    let x = (read inputjar :: Int)
    writeFile "output.txt" (prime x)
    
 --from file write into console
main3=do
    inputjar<-readFile "input.txt"
    let x = (read inputjar :: Int)
    print (prime x)
    

    -- Висновок: На даній лабораторній роботі ми навчилися працювати з потоками введення та виведення у консолі та файлах