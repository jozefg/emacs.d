## emacs.d

This is my emacs configuration. It's designed to be plunked into some poor
environment let me immediately begin working.

This isn't completely dependency free. It expects

 - emacs > 24     for `lisp/init-melpa.el`, used everywhere
 - ag             for `lisp/init-my-keys.el`
 - coq + coq-mode for `lisp/init-coq.el`
 - ghc-mod        for `lisp/init-haskell.el`
 - merlin         for `lisp/init-ocaml.el`
 - mu4e           for `lisp/init-mail.el`
 - offlineimap    for `lisp/init-mail.el`
 - proofgeneral   for `lisp/init-coq.el`
 - twelf          for `lisp/init-twelf.el`

All of these are available with a good package manager (apt-get, pacman) or
trivial to build and install on Linux. No guarantees about Windows, I've made
no attempts at compatibility.

All these files are loaded so that if one fails to load the rest still
will. This means that in theory you can just drop this in and
magically end up with some subset of configuration.
