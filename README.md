# Hunitxt


# How use the Test
  run the function "runTestTT" in GHCI
  e.g. *Main> runTestTT test1
# Alternative How use the Test
  run the function "runTestTT" in GHC
  e.g. ghc -e "runTestTT test3" test1.hs 
  
# What to know for Test.QuickCheck
  1) running the function quickCheck we test a property with 100 randomly-generated values (by default).
     e.g. test = quickCheck  prop_   -->  where prop_...   is the name of property we want to test
     
      if all is ok then QuickCheck prints a message like this                
             --> "+++ OK, passed 100 tests."
      if the property fails then QuickCheck prints out a counter-example      
             --> "*** Failed! Falsifiable (after 5 tests and 5 shrinks):    
                      [0]
                      [1]"
                      
  2) running the function verboseCheck we tests a property and prints the results and all test cases generated
    e.g. test = verboseCheck  prop_  -->  where prop_...   is the name of property we want to test
    
    verboseCheck will prints out a result like this:
           --> "Passed:  
                []
                Passed: 
                [1]
                Failed:  
                [1,0]
                *** Failed! Passed:                       
                []
                assed:                                       
                [0]
                Passed:                                       
                [1]
                Passed:                                       
                [0,0]
                Falsifiable (after 3 tests):                  
                [1,0]

# Prova_test per invocare capturing di parametri:
  ghc -e "combine 3 4" Prova_test.hs 2> capture