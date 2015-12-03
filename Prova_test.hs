

  module Prova_test
    where

  import Debug.Trace
  
  
  
  
  trace_same :: Show a => String -> a -> a
  trace_same message x = trace (message ++ (show x)) x
  
 
  cube :: Int -> Int
  cube x =
    trace_same ("input:" ++ show x ++ " output:") $
    (x^(3::Int))
  
  combine :: Int -> Int -> Int
  combine x y = ((cube x) + (cube y))
  
 
