{-# LANGUAGE OverloadedStrings #-}

module Prestige.API where

import Web.Scotty 
import Prestige.ManagedLink as ManagedLink

routes :: ScottyM ()
routes = do
  get "/hello" ManagedLink.start

