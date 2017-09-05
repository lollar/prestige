{-# LANGUAGE OverloadedStrings #-}

module Prestige.API where

import Web.Scotty 
import Prestige.ManagedLink as ManagedLink

routes :: ScottyM ()
routes = do
  get "/hello" $ do
    text "hello world!"

  get "/hello/:name" $ do
    name <- param "name"
    ManagedLink.start name
