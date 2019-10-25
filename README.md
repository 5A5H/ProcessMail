# ProcessMail
A shell script that sends a mail after a process terminated.

## Installation
  - put the ```ProcessMail.sh``` anywhere on you system, e.g. ```~/user/ProcessMail.sh```
  - make the file ```ProcessMail.sh``` executable:
  ```
  chmod 777 ProcessMail.sh
  ```
  - modify lines 1,2 of ```ProcessMail.sh```, e.g.
  ```
  MAILTO="user@gmail.com"
  SUBJECT="Process finished"
  ```
  - for convenience one can assign an alias (further examples rely on this).

  Add to the user shell steering file (e.g ```~/.bashrc```,```~/.profile```,```~/.zshrc```, ...)
  ```
  alias MP=path_to_ProcessMail.sh
  ```
## Usage
For simple commands just wrap the script around a process execution command.

Example:
```
MP python rigid_body.py
```
Result - Terminal:
```
Steel material (linear elastic) created!
Steel material parameters assigned!
Start time integration
Assertion failed: (row>=0 && row<rows() && col>=0 && col<cols()), function coeffRef, file /Users/user/ELSE/Eigen/src/SparseCore/SparseMatrix.h, line 208.
/Users/user/ELSE/examples/rigid_body_and_bc/startscript.sh: line 14: 11663 Abort trap: 6           $@

real	0m0.196s
user	0m0.054s
sys	0m0.029s
sending mail
```
Result - Mail:
```
Process finished on	: localhost.bauwesen.uni-duisburg-essen.de
Working directory	  : /Users/user/ELSE/examples/rigid_body_and_bc
Screen session		  :
Screen Window		    :

```
