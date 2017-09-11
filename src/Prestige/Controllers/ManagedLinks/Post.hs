{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Prestige.Controllers.ManagedLinks.Post where

import Web.Scotty
import Data.Monoid ((<>))

start destinationUrl = do
  -- | managed_link = Create.persist(destination_url)
  -- | Set result object result to the managed_link.short_code 
  text destinationUrl
