## MomX packages 

#### Versioning
Packages versions follows [Hadley's principles](https://r-pkgs.org/release.html#release-version) borrowed themselves to [semantic versionning](http://semver.org/)

In brief, packages have this type of version number : `major.minor.patch.dev`

* `major` is incremented only with major (API breaking) changes
* `minor` is incremented when new features are added
* `path` is incremented when bugs are fixed.
* `dev` may not be here but, when present, is at least `9000` and indicates a development version

Each minor version, and a fortiori major ones, will be released on CRAN. Others only live on GitHub.

## Package organisation

### Root folder
* contains `sandbox/` both git and rbuild ignored. Contains ongoing work that should not harm the package check

### R folder
For a MomX package further abbreviated `pkg`:

* `R/pkg_package.R`: Description, shared for README.Rmd, Description and ?pkg is in 
* `R/pkg_reexports.R`: contains reexported functions
* `R/pkg_datasets.R`: contains datasets doc and, when possible, how to recreate them 

