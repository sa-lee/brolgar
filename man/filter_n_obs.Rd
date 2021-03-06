% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter-n-obs.R
\name{filter_n_obs}
\alias{filter_n_obs}
\title{Filter by the number of observations for an id.}
\usage{
filter_n_obs(data, id, filter)
}
\arguments{
\item{data}{data.frame to explore}

\item{id}{vector of ids to define which values belong to which individual}

\item{filter}{an expression you want to filter by, where number of
observations is referred in as \code{l_n_obs}. For example (\code{l_n_obs > 10})
would filter those observations with greater than 10 observations.}
}
\value{
dataframe filtered by the number of observations, with an additional column \code{l_n_obs} containing the number of observations for each \code{id}.
}
\description{
When exploring longitudinal data it can be useful to
filter by the number of observations to help with certain exploratory
data analysis.
}
\examples{
wages \%>\% filter_n_obs(id = id, filter = l_n_obs > 10)
wages \%>\% filter_n_obs(id = id, filter = l_n_obs == 2)

}
