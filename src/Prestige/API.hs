{-# LANGUAGE OverloadedStrings #-}

module Prestige.API where

import Web.Scotty 
import Prestige.Controllers.ManagedLinks.Post as ManagedLinksPost

routes :: ScottyM ()
routes = do
  get "/hello" $ do
    text "hello world!"

  post "/managed_links" $ do
    params <- param 
    ManagedLinksPost.start params
