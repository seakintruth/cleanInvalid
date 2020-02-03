# cleanInvalid
An R package to aid in cleaning data

# Install From Source
For R versions greater or equal to 3.5 I recommend using pacman:

```
cc
pacman::p_load_gh("seakintruth/cleanInvalid")

```

For R versions less than 3.5 use:
```
devtools::install_github("seakintruth/cleanInvalid")
load(cleanInvalid)

```

# Install From compressed file
One of the goals of this project is to get this package into a state where something like this will run:
```
install.packages("https://github.com/seakintruth/cleanInvalid/archive/v0.1.4.tar.gz",repos=NULL,type="source")
```
