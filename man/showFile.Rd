% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/files.R
\name{showFile}
\alias{showFile}
\title{Show a file's metadata}
\usage{
showFile(path = "")
}
\arguments{
\item{path}{The path of file}
}
\value{
A file metadata including year, industry_code, industry_name, dept_code, dept_name, waste_code, waste_name, weight, city_code, city_name, process_code, process_name.
}
\description{
Show a portal file's metadata.
}
\examples{
\donttest{
showFile("data/108.csv")
}
}
