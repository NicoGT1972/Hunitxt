
  
  module Read_module
    where
       
  import System.IO

  readModule ::  IO ()
  readModule = do 
           x <- readFile "Prova_test.hs"
	   putStr x
