

  module Test1
     where
  import Test.HUnit
 
  
  couple :: Int -> ([Char],Int)
  couple x = ("a",x)
  
  triple :: Int -> String -> (Int,String,Int)
  triple x y = (x,y,5)
  
  test1 = TestCase (assertEqual "for (couple 2)," ("a",2) (couple 2)) 
  test2 = TestCase (assertEqual  "for (couple 3)," ("a",2) (couple 3))
  test3 = TestCase (assertEqual "for (triple 2 add)," (2,"less",5) (triple 2 "add"))
  test4 = TestList [test1,test2,test3]
