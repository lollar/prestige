{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty
import Prestige.API as API

main = do
  putStrLn "Starting Server..."
  scotty 8080 API.routes
