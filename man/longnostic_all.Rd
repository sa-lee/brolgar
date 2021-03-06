% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all-longnostics.R
\name{longnostic_all}
\alias{longnostic_all}
\title{Calculate all longnostics}
\usage{
longnostic_all(data, id, var, formula, lag = 1)
}
\arguments{
\item{data}{data.frame to explore}

\item{id}{vector of ids to define which values belong to which individual}

\item{var}{vector of values for individuals, needs to match the id vector}

\item{formula}{character, a formula representing the slope of interest (used in \code{l_slope})}

\item{lag}{the lag to use, default to 1 (used with \code{l_diff})}
}
\value{
a dataframe with longnostics
}
\description{
This function calculates all longnostics:
\itemize{
\item \code{\link[=l_diff]{l_diff()}}
\item \code{\link[=l_max]{l_max()}}
\item \code{\link[=l_mean]{l_mean()}}
\item \code{\link[=l_median]{l_median()}}
\item \code{\link[=l_min]{l_min()}}
\item \code{\link[=l_n_obs]{l_n_obs()}}
\item \code{\link[=l_q1]{l_q1()}}
\item \code{\link[=l_q3]{l_q3()}}
\item \code{\link[=l_sd]{l_sd()}}
\item \code{\link[=l_slope]{l_slope()}}
}
}
\examples{
longnostic_all(wages, id = id, var = lnw, formula = lnw~exper)
}
