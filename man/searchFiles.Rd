% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/files.R
\name{searchFiles}
\alias{searchFiles}
\title{Search files by keyword}
\usage{
searchFiles(keyword = "", path = "")
}
\arguments{
\item{keyword}{Keyword to search (case-insensitive).}

\item{path}{The path of directory.}
}
\value{
A list of matching files along with file metadata, including path, type, size.
}
\description{
Search portal files by keyword
}
\examples{
\donttest{
searchFiles("07", "data")
}
}
