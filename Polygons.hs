{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import System.Environment (getArgs)

isSquare :: Integer -> Bool
isSquare = (\(k :: Double) -> k == (fromInteger . floor) k) . sqrt . fromInteger

squares :: [Integer]
squares = map (\n-> n ^ (2 :: Integer)) [0..]

isTriangular :: Integer -> Bool
isTriangular n = isSquare (8 * n + 1)

triangles :: [Integer]
triangles = map (\n -> n * (n + 1) `div` 2) [0..]

-- slightly faster than filter isSquare triangles
squaresAndTriangles :: [Integer]
squaresAndTriangles = filter isTriangular squares

usage :: IO ()
usage = do
  putStrLn "Usage: polygons <length>"

main :: IO ()
main = do
  args <- getArgs

  case args of
    (len':[]) -> let len = (read len' :: Int) in do
      putStrLn $ "Squares: " ++ (show . take len) squares
      putStrLn $ "Triangles: " ++ (show . take len) triangles
      putStrLn $ "Squares and triangles: " ++ (show . take len) squaresAndTriangles
    _ -> usage
