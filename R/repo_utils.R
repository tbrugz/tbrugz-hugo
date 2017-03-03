
repo_stats <- function() {
  id <- system2("git","log --pretty=format:'%h // %ai' -n 1", stdout = T)
  theme <- "themes/hugo-lithium-theme/"
  themeId <- system2("git",paste0("-C ",theme, " log --pretty=format:'%h // %ai' -n 1"),
                     stdout = T)
  hugo_version <- system2("hugo", "version", stdout = T)
  #XXX R,blogdown,knitr version?
  
  list("hugo.version"=hugo_version, "hugo.theme"=theme,
       "git.hash"=id, "git.theme.hash"=themeId,
       "R.version"=R.version.string,
       "blogdown.version"=as.character(packageVersion("blogdown")),
       "knitr.version"=as.character(packageVersion("knitr")))
}

## write_lines(repo_stats(), "repo_stats.txt")
# st<-repo_stats()
# write_lines(paste(names(st), unlist(st), sep=": "),  "repo_stats.txt")
