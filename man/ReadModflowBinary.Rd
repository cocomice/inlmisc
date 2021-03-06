% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ReadModflowBinary.R
\name{ReadModflowBinary}
\alias{ReadModflowBinary}
\title{Read MODFLOW Binary File}
\usage{
ReadModflowBinary(path, data.type = c("array", "flow"), rm.totim.0 = FALSE)
}
\arguments{
\item{path}{character.
Path name of the binary file.}

\item{data.type}{character.
Description of how the data are saved.}

\item{rm.totim.0}{logical.
If true, stress-periods at time zero are removed.}
}
\value{
Returns a \code{list} object of length equal to the
  number of times the data type is written to the binary file.
  The following list components are returned:
  \describe{
    \item{d}{matrix of data values.}
    \item{kstp}{time step}
    \item{kper}{stress period}
    \item{desc}{variable name}
    \item{ilay}{model-grid layer}
    \item{delt}{length of the current time step.}
    \item{pertim}{time in the stress period.}
    \item{totim}{total elapsed time}
  }
}
\description{
This is a utility function for \href{http://water.usgs.gov/ogw/modflow/}{MODFLOW}.
It reads binary output data from a model run.
}
\details{
This function reads binary head (\file{.hds}), drawdown (\file{.ddn}),
  and budget (\file{.bud}) files generated from a MODFLOW run.
}
\examples{
path <- system.file("extdata", "ex3D.hds", package = "inlmisc")
hds <- ReadModflowBinary(path, "array")

}
\author{
J.C. Fisher, U.S. Geological Survey, Idaho Water Science Center
}
\seealso{
\code{\link{SummariseBudget}}
}
\keyword{IO}

