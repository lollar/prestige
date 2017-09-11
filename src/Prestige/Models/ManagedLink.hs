{-# LANGUAGE DeriveGeneric #-}

module Prestige.Models.ManagedLink where

data ManagedLink = ManagedLink {
    managedLinkId  :: DBKey
  , shortCode      :: String
  , destinationUrl :: String
} deriving (Generic)

instance Model ManagedLink
