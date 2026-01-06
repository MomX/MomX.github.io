packages_github <- c("Momoshop", "Momocs2")
packages_ongoing <- c("MomX", "Momacs", "Momit", "Momstats", "Momdata")


header <-  c("| name | website | github | cran | passing |")
header2 <- c("| ---- | ------- | ------ | ---- | ----------- |")

row <- function(name){

  website <- paste0("[![website](https://img.shields.io/badge/docs-online-blue)](https://momx.github.io/", name, ")")
  github <- paste0("[![code](https://img.shields.io/badge/code-GitHub-black)](https://github.com/MomX/", name, ")")
  cran <- paste0("![CRAN](https://www.r-pkg.org/badges/version/", name, ")")
  passing <- paste0("![R-CMD-check](https://github.com/MomX/", name, "/actions/workflows/R-CMD-check.yaml/badge.svg)")
  paste0("| ", name, " | ", paste(website, github, cran, passing, sep=" | "), " |")
}

cat(c(header, header2, sapply(packages_github, row)), sep="\n")

cat(c(header, header2, sapply(packages_ongoing, row)), sep="\n")
