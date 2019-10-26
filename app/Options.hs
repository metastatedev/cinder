{-# LANGUAGE TemplateHaskell #-}

module Options where

import Development.GitRev
import Options.Applicative
import Protolude
import Text.PrettyPrint.ANSI.Leijen hiding ((<$>), (<>))

data Options
  = Options
      { optionsCommand ∷ Command
      }

data Command
  = Version
  | Schema
  | Validate FilePath

options ∷ Parser Options
options = Options <$> commandOptions

commandOptions ∷ Parser Command
commandOptions =
  subparser
    ( command "version" (info versionOptions (progDesc "Display schema version"))
        <> command "schema" (info schemaOptions (progDesc "Output JSON schema"))
        <> command "validate" (info validateOptions (progDesc "Validate an interaction net intermediate represention JSON file"))
    )

versionOptions ∷ Parser Command
versionOptions = pure Version

schemaOptions ∷ Parser Command
schemaOptions = pure Schema

validateOptions ∷ Parser Command
validateOptions = Validate <$> argument str (metavar "FILE")

parseOptions ∷ IO Options
parseOptions = execParser (info (options <**> helper) (fullDesc <> headerDoc (Just aboutDoc)))

aboutDoc ∷ Doc
aboutDoc = text "Common Interaction Net Delightfully Extensible Representation"

versionDoc ∷ Doc
versionDoc =
  mconcat
    [ aboutDoc,
      line <> line,
      mconcat ["Prerelease version.", line],
      mconcat ["Built from branch ", white $(gitBranch), " at commit ", magenta $(gitHash), " (commit date ", cyan $(gitCommitDate), ").", line]
    ]
