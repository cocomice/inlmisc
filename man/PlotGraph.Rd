% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotGraph.R
\name{PlotGraph}
\alias{PlotGraph}
\title{Plot Method for Graphs}
\usage{
PlotGraph(x, y, xlab, ylab, asp = NA, xlim = NULL, ylim = NULL, xn = 5L,
  yn = 5L, ylog = FALSE, type = "s", lty = 1, lwd = 1, pch = NULL,
  col = NULL, bg = NA, fill = NULL, pt.cex = 1, seq.date.by = "year",
  scientific = NA, conversion.factor = NULL, boxwex = 0.8,
  center.date.labels = FALSE, bg.polygon = NULL)
}
\arguments{
\item{x, y}{Date, numeric, matrix, or data.frame.
Vectors or matrices of data for plotting.
The vector length or number of rows should match.
If \code{y} is missing, then \code{x = x[, 1]} and \code{y = x[, 2:n]}.}

\item{xlab}{character.
Title for \emph{x} axis.}

\item{ylab}{character.
Vector of length 2 giving the title for the 1st and 2nd-\emph{y} axes.
The title for the 2nd-\emph{y} axis is optional and requires \code{conversion.factor} be specified.}

\item{asp}{numeric.
The \emph{y/x} aspect ratio for spatial axes.}

\item{xlim}{numeric or Date.
Vector of length 2 giving the minimum and maximum values for the \emph{x}-axis.}

\item{ylim}{numeric.
Vector of length 2 giving the minimum and maximum values for the \emph{y}-axis.}

\item{xn, yn}{integer.
Desired number of intervals between tick-marks on the \emph{x}- and \emph{y}-axis, respectively.}

\item{ylog}{logical.
If true, a logarithm scale is used for the \emph{y} axis.}

\item{type}{character.
The type of plot for each column of \code{y}, see \code{plot} function for possible types.
A box-and-whisker plot is drawn when \code{type = "box"}, with whiskers extending to the data extremes.}

\item{lty}{integer.
The line type, see \code{par} function for all possible types.
Line types are used cyclically.}

\item{lwd}{numeric.
Line width}

\item{pch}{integer.
Point type, see \code{points} function for all possible types.}

\item{col}{character or function.
Point or line color, see \code{par} function for all possible ways this can be specified.
Colors are used cyclically.}

\item{bg}{character.
Vector of background colors for the open plot symbols given by \code{pch = 21:25} as in \code{points}.}

\item{fill}{character.
Vector of fill colors for areas beneath (or above, direction towards 0) lines of type "l" or "s".}

\item{pt.cex}{numeric.
Expansion factor for the points.}

\item{seq.date.by}{character, numeric, or difftime.
The increment of the date sequence, see \code{seq.Date} function for all possible ways this can be specified.}

\item{scientific}{logical.
Vector of length 3 that indicates if axes labels should be encoded in nice scientific format.
Vector elements correspond to the \emph{x}-axis, \code{y}-axis, and second \emph{y}-axis labels.
Values are recycled as necessary.}

\item{conversion.factor}{numeric.
A conversion factor for the 2nd-\emph{y} axis.}

\item{boxwex}{numeric.
A scale factor to be applied to all boxes, only applicable for box-and-whisker plots.}

\item{center.date.labels}{logical.
If true, date labels are horizontally centered between \emph{x}-axis tickmarks.}

\item{bg.polygon}{list.
If specified, a background polygon is drawn.
The polygon is described using a list of arguments supplied to the \code{polygon} function.
Passed arguments include \code{"x"} and \code{"col"}.}
}
\value{
Used for the side-effect of a new plot generated.
}
\description{
This function draws a sequence of points, lines, or
box-and-whiskers using specified coordinates.
}
\examples{
n <- 50L
x <- as.Date("2008-07-12") + 1:n
y <- sample.int(n, replace = TRUE)
PlotGraph(x, y, ylab = paste("Random number in", c("meters", "feet")), type = "p",
          pch = 16, seq.date.by = "weeks", scientific = FALSE, conversion.factor = 3.28)

y <- data.frame(lapply(1:3, function(i) sample(n, replace = TRUE)))
PlotGraph(x, y, ylab = "Random number", type = "s", pch = 1, seq.date.by = "days",
          scientific=TRUE)

y <- sapply(1:3, function(i) sample((1:100) + i * 100, n, replace = TRUE))
m <- cbind(as.numeric(x), y)
col <- c("red", "gold", "green")
PlotGraph(m, xlab = "Number", ylab = "Random number", type = "b", pch = 15:17,
          col = col, pt.cex = 0.9)
legend("topright", LETTERS[1:3], inset = 0.05, col = col, lty = 1, pch = 15:17,
       pt.cex = 0.9, cex = 0.8, bg = "white")

graphics.off()

}
\author{
J.C. Fisher, U.S. Geological Survey, Idaho Water Science Center
}
\seealso{
\code{\link{matplot}}, \code{\link{boxplot}}
}
\keyword{hplot}

