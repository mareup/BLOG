
library(blogdown)
library(knitr)


change_name <- function(filedir = NULL, set_path = T, pathname = NULL, knitr = T) {
    if(!(is.character(filedir))) {
        stop()
    }
    
    if(set_path) {
        path <- "~/work/share/BLOG/content/post/"
    } else {
        if(!(is.character(pathname))) {
            stop()
        }
        
        path <- pathname
    }
    
    command <- paste0("mv ", path, filedir, "/index.md ",
                             path, filedir, "/index.Rmd")
    
    system(command)
}

rmd_to_md <- function(filedir = NULL, set_path = TRUE) {
    if(!(is.character(filedir))) {
        stop()
    }
    
    if(set_path) {
        path <- "~/work/share/BLOG/content/post/"
    } else {
        if(!(is.character(pathname))) {
            stop()
        }
        
        path <- pathname
    }
    
    knitr::knit(paste0(path, filedir, "/index.Rmd"), paste0(path, filedir, "/index.md"))
    
}
