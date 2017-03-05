
tbrugz-hugo
===========

Sources for <https://tbrugz.github.io>


setup
-----

*Install blogdown (in R)*

```r
devtools::install_github('rstudio/blogdown')
blogdown::install_hugo()
```

*Clone this repo*

```
git clone https://github.com/tbrugz/tbrugz-hugo.git tbrugz-hugo
cd tbrugz-hugo
mkdir -p themes
```

*Update submodules*

```
(
git submodule add -b master git@github.com:tbrugz/tbrugz.github.io.git public
OR
git submodule add -b master https://github.com/tbrugz/tbrugz.github.io.git public
)
AND
git submodule init public && git submodule update public
```

*Update theme*

`./git-update.sh`


normal workflow
---------------

*Edit*

files under `content` & `static`

*Build site (in R)*

```r
blogdown::serve_site()
```

& go to <http://127.0.0.1:4321/> (was <http://localhost:1313/>)

*Preview site diff*

`git -C public diff`  
`git -C public diff --stat`

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
