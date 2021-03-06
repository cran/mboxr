% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merge_mbox_all.R
\name{merge_mbox_all}
\alias{merge_mbox_all}
\title{Merging all mbox files in current directory into one tibble.}
\usage{
merge_mbox_all(path = ".", file = NULL)
}
\arguments{
\item{path}{A character vector of full path names; the default corresponds to the working directory, \link[base]{getwd}. Tilde expansion (see \link[base]{path.expand}) is performed. Missing values will be ignored.}

\item{file}{Output RDS file if you want to save. The default is NULL, which is not saving the output as a file.}
}
\value{
One tibble object for all the merged mbox files in your current directory will be returned.
}
\description{
Use this function for merging all mbox files into one tibble object.
}
\details{
merge_mbox_all


See example below.
}
\examples{
\donttest{
# Changing working directory to temp for the demonstration purpose only.
setwd(tempdir())
library(mboxr)
test_path <- system.file("extdata", package = "mboxr")
# Save your own RDS file as an output if you need it:
data <- merge_mbox_all(path = test_path, file = "output.rds")
# Now you can use the imported file as a tibble.
str(data)
}
}
\references{
\url{https://en.wikipedia.org/wiki/Mbox}

\url{https://docs.python.org/3/library/mailbox.html}

\url{https://www.anaconda.com/download/}
}
\author{
JooYoung Seo, \email{jooyoung@psu.edu}

Soyoung Choi, \email{sxc940@psu.edu}
}
\keyword{merge_mbox_all}
