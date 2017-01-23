simpleSetup
=========================

> Simple Functions for Setting Up An R Source Code File For Use on Multiple
    Machines

[![CRAN Version](http://www.r-pkg.org/badges/version/simpleSetup)](https://cran.r-project.org/package=simpleSetup)
[![Build Status](https://travis-ci.org/christophergandrud/simpleSetup.svg?branch=master)](https://travis-ci.org/christophergandrud/simpleSetup)

When working across multiple machines and, similarly for
reproducible research, it can be time consuming to ensure that you have
all of the needed packages installed and loaded and that the correct working
directory is set. simpleSetup provides simple functions for making these
tasks more straightforward.

Currently it has two functions:

- `library_install` for loading packages used in a script and installing ones
that are missing.

- `set_valid_wd` search for and set a valid working directory from a list of possible
directories.

## Setup example

```r
library(simpleSetup)

# Load packages, install if needed
packages <- c('networkD3', 'coreSim')
library_install(packages)

# Set valid working directory
possible_wd <- c('/examples/directory1', '/anotherExample/directory2')
set_valid_wd(possible_wd)
```

The hitch is that users will have to install the **setupPkg**, but this is one
quick installation, as the package has no dependencies.
