module TreeSitter.Erlang
( tree_sitter_erlang
, getNodeTypesPath
, getTestCorpusDir
) where

import Foreign.Ptr
import TreeSitter.Language
import Paths_tree_sitter_erlang

foreign import ccall unsafe "vendor/tree-sitter-erlang/src/parser.c tree_sitter_erlang" tree_sitter_erlang :: Ptr Language

getNodeTypesPath :: IO FilePath
getNodeTypesPath = getDataFileName "vendor/tree-sitter-erlang/src/node-types.json"

getTestCorpusDir :: IO FilePath
getTestCorpusDir = getDataFileName "vendor/tree-sitter-erlang/test/corpus"
