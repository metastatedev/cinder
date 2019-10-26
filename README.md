### Common Interaction Net Delightfully Extensible Representation

![GitHub](https://img.shields.io/github/license/cryptiumlabs/cinder)
![Build status](https://img.shields.io/circleci/build/github/cryptiumlabs/cinder?token=abc123def456)
![GitHub issues](https://img.shields.io/github/issues/cryptiumlabs/cinder)

### Overview

Common interaction net intermediate represention which can be easily extended.

This Haskell package defines canonical data types for this intermediate representation,
which can be exported to a [JSON Schema](https://json-schema.org) v4-compatible schema
document for validation in [various languages](https://json-schema.org/obsolete-implementations).

### Uses

- Intermediate representation on which different frontend languages & compiler backends can standardise
- Intermediate representation which can be read-back, debugged, and visualised with common tooling
- Intermediate representation which can define standards for interaction between interaction nets
  & the outside world (e.g. filesystem I/O, network I/O, blockchain state)
- Intermediate representation which can be used to transport code between different runtimes
  (a future possibility, will require an efficient binary encoding)

### Support requirements

#### Compiler frontends

Compiler frontends intending to support this intermediate representation must output
a schema-compliant interaction net data structure as the result of encoding a term.

#### Compiler backends

Compiler backends intending to support this intermediate representation must accept
a schema-compliant interaction net data structure as input to their compilation or
interpretation pipeline.

Compiler backends may additionally elect to support reading-back partially- or fully-reduced
nets into this intermediate representation.

#### Visualisation tools

Visualisation tools intending to support this intermediate representation must accept
a schema-compliant interaction net data structure as input to their visualisation.
