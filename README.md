# cl-ode-lower-levels

Low level bindings to cl-ode based on the excellent cl-ode by Brad Beer


# WARNING - This project is not being worked on by me any more

The goal of this was to make a common minimal ode library by removing the abstractions from cl-ode. However once I had done this I realized that around 420 functions were missing from cl-ode in the first place. This was a bit of a bummer so I decided to park this project and instead look at making a full set of mimimal bindings instead. The result of that is the [autowrapped-ode](https://github.com/cbaggers/autowrapped-ode) project.

So if you find a use for this then that is awesome, if you go to the `wip` folder you will see the functions and structs still to add. They have been dumped by swig and so are valid bindings, however they are missing the much of the type info that the rest of the project has, and as such, are deemed wip until that is fixed.
