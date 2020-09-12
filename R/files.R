#' List files
#'
#' List files available on the portal.
#'
#'
#' @param path The path of directory.
#'
#' @export
#'
#' @return A list of available files and metadata, including path, type, size.
#'
#' @examples
#' \donttest{
#' listFiles("data")
#' }
listFiles <- function(path="") {
  checkInternet()

  files <- jsonlite::fromJSON(paste0(apiRootUrl, path))
  files = subset(files, select = c(path, type, size))
  return(files)
}

#' Search files by keyword
#'
#' Search portal files by keyword
#'
#' @param keyword Keyword to search (case-insensitive).
#' @param path The path of directory.
#'
#' @export
#'
#' @return A list of matching files along with file metadata, including path, type, size.
#'
#' @examples
#' \donttest{
#' searchFiles("07", "data")
#' }
searchFiles <- function(keyword="", path="") {
  checkInternet()

  files <- jsonlite::fromJSON(paste0(apiRootUrl, path))
  files = subset(files, select = c(path, type, size), grepl(keyword , files$path))
  return(files)
}

#' Show a file's metadata
#'
#' Show a portal file's metadata.
#'
#' @param path The path of file
#'
#' @export
#'
#' @return A file metadata including year, industry_code, industry_name, dept_code, dept_name, waste_code, waste_name, weight, city_code, city_name, process_code, process_name.
#'
#' @examples
#' \donttest{
#' showFile("data/108.csv")
#' }
showFile <- function(path="") {
  checkInternet()

  if(path == "") {
    stop("Please enter file path.",
         call. = FALSE
    )
  }else if(tools::file_ext(path) != "csv") {
    stop("Please check file type.",
         call. = FALSE
    )
  }

  fileUrl <- paste0(rawRootUrl, path)
  return (data.table::fread(fileUrl, encoding = "UTF-8"))
}
