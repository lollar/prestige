{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Prestige.Controllers.ManagedLinks.Post where

import Web.Scotty
import Data.Monoid ((<>))

import Prestige.Resources.ManagedLinks.Post as PostResource

start params = do
  destinationUrl <- params "destination_url"
  result <- PostResource.create destinationUrl
  json result
