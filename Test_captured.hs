
  
  module Read_module
    where

  import Prova_test
  import Test.HUnit

  test_all :: IO()
  test_all = do
    captured <- readFile "Prova_test.cube_captured"
    runTestTT $
      TestList [
        TestCase $ assertEqual "test Prova_test.cube" result (cube parameters)
        |
        (_a,[parameters],result) <- parse captured
      ]
    return()

  parse s = read ("[" ++ init s ++ "]")::[(Int,[Int],Int)]
