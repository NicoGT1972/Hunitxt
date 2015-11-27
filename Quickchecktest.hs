

   module Quickcheck
      where
      
   import Data.List  
   import Test.QuickCheck 
   
   
   prop_revapp :: [Int] -> [Int] -> Bool
   prop_revapp xs ys = reverse (xs++ys) == reverse xs ++ reverse ys
  
   prop_revapp1 :: [Int] -> [Int] -> Bool
   prop_revapp1 xs ys = reverse (ys++xs) == reverse xs ++ reverse ys

   testRev = quickCheck  prop_revapp 
   testRev1 = quickCheck  prop_revapp1

   
   --- this is a simple test create to verify  distributive property for function "reverse" using quickCheck
   --- function ; the function main fails the random tests instead main1 passed all tests (100 by default)
   
   
   prop_ReverseId :: [Int] -> Bool
   prop_ReverseId xs = reverse xs == xs
   
   testID = quickCheck prop_ReverseId
   testID1 = verboseCheck prop_ReverseId
   
   --- this test checks whether a list is identical to its inverse
  
  
   qsort :: (Ord a) => [a] -> [a]  
   qsort [] = []  
   qsort (x:xs) =   smalSort ++ [x] ++ bigSort
       where
         smalSort = qsort [a | a <- xs, a <= x]  
         bigSort = qsort [a | a <- xs, a > x]  
    
   isOrdered :: (Ord a) => [a] -> Bool
   isOrdered (x1:x2:xs) = x1 <= x2 && isOrdered (x2:xs)
   isOrdered _          = True
   
   prop_qsort_isOrdered :: [Int] -> Bool
   prop_qsort_isOrdered  xs = isOrdered $ qsort xs
   
   testOrd = quickCheck prop_qsort_isOrdered
   
    --- this test  lets try to test that the output is in fact sorted
    
   
   prop_qsort_min :: [Int] -> Bool
   prop_qsort_min xs = (null xs) || head (qsort xs) == minimum xs 
   
   testMin = verboseCheck prop_qsort_min
   
   
   --- this test verify if the head of the result is the minimum element of the input
