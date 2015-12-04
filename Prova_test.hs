

  module Prova_test
    where

  import Debug.Trace
  
  
  
  
  trace_same :: Show a => String -> a -> a
  trace_same message x = trace (message ++ show x) x

  trace_capture :: Show a => [a] -> a -> a
  trace_capture parameters result =
    trace ("(" ++ show (length parameters) ++ "," ++ show parameters ++ "," ++ show result ++ "),") result

  unc :: (Eq a, Num a) => a -> [b] -> (b -> c)-> c
  unc arity list function
    | arity == 1 = unc1 list function

  unc1 [a] f = f a

  cube :: Int -> Int
  cube x =
--    trace_same ("input:" ++ show x ++ " output:") $
    trace_capture [x] $
    x^(3::Int)

  combine :: Int -> Int -> Int
  combine x y = (cube x) + (cube y)
  
 
