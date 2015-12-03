
  
  module Read_module
    where

  import Prova_test
  import Test.HUnit

  test_all :: IO()
  test_all = do
    captured <- readFile "Prove_test.cube_captured"
    let (parameters, result) = parse captured in
      runTestTT $ TestList [
                  TestCase $ assertEqual "test Prova_test.cube" result (cube parameters)
                ]
    return()

  parse s = (0, 0)
