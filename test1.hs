

  module Test
     where
  import Data.Char
  import Test.HUnit         

  test1 = TestCase $ assertEqual "test upCase" "FOO" (map toUpper "foo")
  test2 = TestCase $ assertEqual "test downCase" "timE" (map toLower "TIME")
  
  test3 = TestList [test1,test2]
