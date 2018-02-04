import Html exposing (text)
  
isEven n = n % 2 == 0
  
fib2 x y = 
 if y > 4000000 then [] else
 List.concat [[x+y], fib2 y (x+y)]

fib  = 
 List.concat [[1,2], fib2 1 2]


main =
  text (toString ( List.sum (List.filter isEven fib)))