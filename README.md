## emacs.d

This is my emacs configuration. It's designed to be plunked into some poor
environment let me immediately begin working.

This isn't completely dependency free. It expects

<table>
<tr> <th>Dependency</th><th>File</th> </tr> <tr>
<tr> <td> emacs > 24     </td> <td> `lisp/init-melpa.el`   </td> </tr>
<tr> <td> ag             </td> <td> `lisp/init-my-keys.el` </td> </tr>
<tr> <td> coq + coq-mode </td> <td> `lisp/init-coq.el`     </td> </tr>
<tr> <td> ghc-mod        </td> <td> `lisp/init-haskell.el` </td> </tr>
<tr> <td> merlin         </td> <td> `lisp/init-ocaml.el`   </td> </tr>
<tr> <td> mu4e           </td> <td> `lisp/init-mail.el`    </td> </tr>
<tr> <td> offlineimap    </td> <td> `lisp/init-mail.el`    </td> </tr>
<tr> <td> proofgeneral   </td> <td> `lisp/init-coq.el`     </td> </tr>
<tr> <td> twelf          </td> <td> `lisp/init-twelf.el`   </td> </tr>
</tr>
</table>

All of these are available with a good package manager (apt-get, pacman) or
trivial to build and install on Linux. No guarantees about Windows, I've made
no attempts at compatibility.

All these files are loaded so that if one fails to load the rest still
will. This means that in theory you can just drop this in and
magically end up with some subset of configuration.
