

  module Exercise 
    where
    
  import Prelude
  import Data.Char
  import Data.List
  import Debug.Trace
  
  
  
  
  
  trace_same message x = trace (message ++ (show x)) x
  
 
  cube :: Int -> Int
  cube x = trace_same (show ("cube_fun: " ++ "cube_input: " ++ show (x) ++ " cube_output: ")) (x^3)
  
  conbine :: Int -> Int -> Int
  conbine x y = ((cube x) + (cube y))
  
 
