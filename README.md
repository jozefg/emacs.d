## emacs.d

This is my emacs configuration. It's designed to be plunked into some poor environment and
let me immediately begin working.

This isn't completely dependency free. It expects

 - emacs > 24     for package
 - ag             for ag.el
 - coq + coq-mode for all of init-coq
 - ghc-mod        for ghc-mod
 - merlin         for merlin-mode, autocompletion for ocaml
 - mu4e           for mu4e, this also depends on mu and offlineimap
 - proofgeneral   for proof general in init-coq, it's not packaged with elpa yet
 - twelf          for the Twelf mode loaded in init-twelf

All of these are avaible with a good package manager (apt-get, pacman)
