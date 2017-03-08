
library(readr)

repo_info <- function() {
  log_cmd_args <- " log --pretty=format:'%h // %ai' -n 1"
  
  id <- system2("git", log_cmd_args, stdout = T)
  # XXX grab theme name from config.toml... also grab theme remote
  theme <- "themes/hugo-lithium-theme/"
  themeId <- system2("git",paste0("-C ", theme, log_cmd_args), stdout = T)
  hugo_version <- system2("hugo", "version", stdout = T)

  list("hugo.version"=hugo_version,
       "hugo.theme"=theme,
       #"git.hash"=id,
       "git.theme.hash"=themeId,
       "R.version"=R.version.string,
       "blogdown.version"=as.character(packageVersion("blogdown")),
       "ggplot2.version"=as.character(packageVersion("ggplot2")),
       "knitr.version"=as.character(packageVersion("knitr"))
       )
}

write_repo_info <- function() {
  st<-repo_info()
  write_lines(paste(names(st), st, sep=": "),  "repo_info.txt")
}

## write_lines(repo_info.txt(), "repo_info.txt")
# library(readr)
# st<-repo_info.txt()
# write_lines(paste(names(st), unlist(st), sep=": "),  "repo_info.txt")
#
# write_repo_info()
