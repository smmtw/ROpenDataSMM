apiRootUrl <- "https://api.github.com/repos/smmtw/OpenDataSMM/contents/"
rawRootUrl <- "https://raw.githubusercontent.com/smmtw/OpenDataSMM/master/"

utils::globalVariables(c("type", "size"))

checkInternet <- function() {
  if (!curl::has_internet()) {
    stop("`opendataSmm` does not work offline. Please check your internet connection.",
         call. = FALSE
    )
  }
}
