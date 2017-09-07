{-# LANGUAGE OverloadedStrings #-}

module Prestige.API where

import Web.Scotty 
import Prestige.Controllers.ManagedLinks.Create as ManagedLinksCreate

routes :: ScottyM ()
routes = do
  get "/hello" $ do
    text "hello world!"

  post "/managed_links/:destination_url" $ do
    destinationUrl <- param "destination_url"
    ManagedLinksCreate.start destinationUrl
