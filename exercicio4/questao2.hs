import Numeric
import Data.Char 

binDec :: Integral i => i -> i
binDec 0 = 0
binDec i = 2 * binDec (div i 10) + (mod i 10)

hexChar :: Char -> Integer
hexChar ch | ch == '0' = 0 
           | ch == '1' = 1 
           | ch == '2' = 2 
           | ch == '3' = 3 
           | ch == '4' = 4 
           | ch == '5' = 5 
           | ch == '6' = 6 
           | ch == '7' = 7 
           | ch == '8' = 8 
           | ch == '9' = 9 
           | ch == 'A' = 10 
           | ch == 'B' = 11 
           | ch == 'C' = 12 
           | ch == 'D' = 13 
           | ch == 'E' = 14 
           | ch == 'F' = 15 
           | otherwise     = 0

paraHex :: String -> Integer
paraHex [] = 0
paraHex hxStr = hexChar (last hxStr) + (16 * paraHex (init hxStr))

convert:: String -> String -> [String]
convert x y | y == "bin" = [(show (binDec (read x::Int))), (showHex (binDec (read x::Int))(""))]--Num em Dec/Hex
            | y == "dec" = [(showHex (( read x::Int)) ("")), showIntAtBase (2) intToDigit (read x::Int) ("")]--Num em Hex/Bin
            | y == "hex" = [show(paraHex x), showIntAtBase (2) intToDigit (paraHex x) ("")] 

-- ele retornara uma lista ex: imput: convert "101" "bin"    |  convert "101" "dec"            | convert "8F" "hex"
--                             output: [5 , 5] -> [hex,dec]  |  [65 , 1100101] -> [hex , bin]  | [143 , 10001111] -> [dec , binario]