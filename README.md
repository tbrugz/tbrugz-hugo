
tbrugz-hugo
===========

Sources for <https://tbrugz.github.io>


setup
-----

*Install blogdown & packages (in R)*

```r
devtools::install_github('rstudio/blogdown')
blogdown::install_hugo()
install.packages(c("devtools","ggplot2","printr","lubridate"))
```

*Clone this repo*

```
git clone https://github.com/tbrugz/tbrugz-hugo.git tbrugz-hugo
cd tbrugz-hugo
#mkdir -p themes
```

*Update submodules*

```shell
# git submodule add -b master https://github.com/tbrugz/tbrugz.github.io.git public
git submodule init public && git submodule update public
```

*Update theme*

`./git-update.sh`


normal workflow
---------------

*Edit*

files under `content` & `static`

*Build & preview local site (in R)*

```r
blogdown::serve_site()
```

& go to <http://localhost:4321/>

*Preview site diff*

`git -C public diff`  
`git -C public diff --stat`

*Build production site (in R)*

```r
blogdown::build_site(local = FALSE)
```

*Deploy to Github (from "public" folder - should be a git submodule)*

`./deploy.sh`


misc notes
----------

*Running hugo commands (in R)*

```r
blogdown::hugo_cmd("version")
blogdown::hugo_cmd("config")
blogdown::hugo_cmd("--help")
```


*Hugo tips*

see [hugo.md](hugo.md)


*Packages*

see [rpackages.md](rpackages.md)


*Repo info*

see [R/repo_utils.R](R/repo_utils.R)

