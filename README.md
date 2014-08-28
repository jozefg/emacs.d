## emacs.d

This is my emacs configuration. It's designed to be plunked into some poor environment and
let me immediately begin working.

This isn't completely dependency free. It expects

 - emacs > 24     for package
 - ghc-mod        for ghc-mod
 - Coq + Coq-mode for all of init-coq
 - ProofGeneral   for proof general in init-coq, it's not packaged with elpa yet
 - Ag             for ag.el
 - Mu4e           for mu4e, this also depends on mu and offlineimap
 - Merlin + Opam  for merlin-mode, autocompletion for ocaml

All of these are avaible with a good package manager (apt-get, pacman)
