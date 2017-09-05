{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Prestige.Controllers.ManagedLinks.Create where

import Web.Scotty
import Data.Monoid ((<>))
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics

data ResultObject = ResultObject { success :: String, result :: String } deriving (Show, Generic)
instance ToJSON ResultObject

result_obj :: ResultObject
result_obj = ResultObject { success = "true", result = "https://lollar.codes" }

start destination_url = do
  -- | managed_link = Create.persist(destination_url)
  -- | Set result object result to the managed_link.short_code 
  json result_obj
