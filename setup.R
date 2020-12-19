
library(blogdown)
library(knitr)


change_name <- function(filedir = NULL, set_path = T, pathname = NULL, knitr = T) {
    if(!(is.character(filedir))) {
        stop()
    }
    
    if(set_path) {
        path <- "~/work/share/BLOG/content/post/"
        path <- paste0(path, filedir)
        
    } else {
        # if(!(is.character(pathname))) {
        #     stop()
        # }
        
        if(!(is.character(filedir))) {
            stop()
        }
        
        path <- filedir
    }
    
    command <- paste0("mv ", path, "/index.md ",
                             path, "/index.Rmd")
    
    system(command)
}

rmd_to_md <- function(filedir = NULL, set_path = TRUE) {
    if(!(is.character(filedir))) {
        stop()
    }
    
    if(set_path) {
        path <- "~/work/share/BLOG/content/post/"
        path <- paste0(path, filedir)
        
    } else {
        if(!(is.character(filedir))) {
            stop()
        }
        
        path <- filedir
        
    }
    
    knitr::knit(paste0(path, "/index.Rmd"), paste0(path, "/index.md"))
    
}
