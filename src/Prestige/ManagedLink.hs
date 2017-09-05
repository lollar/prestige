{-# LANGUAGE OverloadedStrings #-}

module Prestige.ManagedLink where

import Web.Scotty
import Data.Monoid ((<>))

start name = do
  text ("hello " <> name <> "!")

