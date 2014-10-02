## emacs.d

This is my emacs configuration. It's designed to be plunked into some poor
environment let me immediately begin working.

This isn't completely dependency free. It expects

 Dependency     |         File
--------------- | --------------------
 emacs > 24     |  `lisp/init-melpa.el`
 ag             |  `lisp/init-my-keys.el`
 coq + coq-mode |  `lisp/init-coq.el`
 ghc-mod        |  `lisp/init-haskell.el`
 merlin         |  `lisp/init-ocaml.el`
 mu4e           |  `lisp/init-mail.el`
 offlineimap    |  `lisp/init-mail.el`
 proofgeneral   |  `lisp/init-coq.el`
 twelf          |  `lisp/init-twelf.el`

All of these are available with a good package manager (apt-get, pacman) or
trivial to build and install on Linux. No guarantees about Windows, I've made
no attempts at compatibility.

All these files are loaded so that if one fails to load the rest still
will. This means that in theory you can just drop this in and
magically end up with some subset of configuration.
