module Paths_yesoshiage (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,0], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "C:\\Documents and Settings\\syoko_sasaki\\Application Data\\cabal\\bin"
libdir     = "C:\\Documents and Settings\\syoko_sasaki\\Application Data\\cabal\\yesoshiage-0.0.0\\ghc-7.0.4"
datadir    = "C:\\Documents and Settings\\syoko_sasaki\\Application Data\\cabal\\yesoshiage-0.0.0"
libexecdir = "C:\\Documents and Settings\\syoko_sasaki\\Application Data\\cabal\\yesoshiage-0.0.0"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "yesoshiage_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "yesoshiage_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "yesoshiage_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "yesoshiage_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
