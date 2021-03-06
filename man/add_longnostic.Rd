% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add-longnostic.R
\name{add_longnostic}
\alias{add_longnostic}
\alias{add_l_max}
\alias{add_l_diff}
\alias{add_l_mean}
\alias{add_l_median}
\alias{add_l_min}
\alias{add_l_n_obs}
\alias{add_l_q1}
\alias{add_l_q3}
\alias{add_l_sd}
\alias{add_l_slope}
\title{Add a longnostic to a dataframe}
\usage{
add_l_max(data, id, var)

add_l_diff(data, id, var, lag = 1)

add_l_mean(data, id, var)

add_l_median(data, id, var)

add_l_min(data, id, var)

add_l_n_obs(data, id)

add_l_q1(data, id, var)

add_l_q3(data, id, var)

add_l_sd(data, id, var)

add_l_slope(data, id, formula)
}
\arguments{
\item{data}{data.frame to explore}

\item{id}{vector of ids to define which values belong to which individual}

\item{var}{vector of values for individuals, needs to match the id vector}

\item{lag}{the lag to use, default to 1 (used with \code{l_diff})}

\item{formula}{character, a formula representing the slope of interest (used in \code{l_slope})}
}
\description{
Match a longnostic to the id of a dataframe. This saves you creating a
longnostic and then joining it back to a dataframe
}
\examples{
add_l_max(data = wages, id = id, var = lnw)
add_l_diff(data = wages, id = id, var = lnw)
add_l_diff(data = wages, id = id, var = lnw, lag = 2)
}
