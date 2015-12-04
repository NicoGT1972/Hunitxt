
  
  module Read_module
    where

  import Prova_test
  import Test.HUnit
 
  
  test_all :: IO()
  test_all = do
    captured <- readFile "capture2"
    let (parameters, result) = tuple captured in
      runTestTT $ TestList [
                  TestCase $ assertEqual "test Prova_test.couple" result (couple parameters)
                ]
    return()

  tuple x = (2,("a",2))
  
