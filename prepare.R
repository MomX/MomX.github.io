
packages_core <- c("MomX", "Momacs", "Momit", "Momocs2",  "Momstats")
packages_extended <- c("Momoshop")
packages_legacy <- c("Momocs")

header <-  c("| name | website | github | last_commit  | cran | passing |")
header2 <- c("| ---- | ------- | ---- | ------- | ------ | ----------- |")

row <- function(name){

  website <- paste0("[![website](https://img.shields.io/badge/website-0077B6)](https://momx.github.io/", name, ")")
  cran <- paste0("![CRAN](https://www.r-pkg.org/badges/version/", name, ")")
  passing <- paste0("![R-CMD-check](https://github.com/MomX/", name, "/actions/workflows/R-CMD-check.yaml/badge.svg)")
  github <- paste0("[![code](https://img.shields.io/badge/github-0077B6)](https://github.com/MomX/", name, ")")
  last_commit <- paste0("![commit](https://img.shields.io/github/last-commit/MomX/", name, ")")
  paste0("| ", name, " | ", paste(website, github, last_commit, cran, passing,  sep=" | "), " |")
}

cat("\n## Core\n",
    c(header, header2, sapply(packages_core, row)),
    "\n## Extended \n",
    c(header, header2, sapply(packages_extended, row)),
    "\n## Legacy \n",
    c(header, header2, sapply(packages_legacy, row)),
    "\n## Projects \n",
    " * Momdata: nice datasets to play with",
    " * Mombank: a participative list of published data",
    " * Momecs: a shiny explorer on top of MomX",
    " * Momfarm: breed, evolve and simulate shapes",
    " * Mombook: all docs in one place",
    sep="\n")
