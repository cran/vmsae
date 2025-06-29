% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vgmsfh_utils.r
\name{confint,VGMSFH-method}
\alias{confint,VGMSFH-method}
\title{Compute Credible Intervals for VGMSFH Parameters}
\usage{
\S4method{confint}{VGMSFH}(object, var_idx = 1, field = "yhat_samples")
}
\arguments{
\item{object}{An object of class \code{VGMSFH}.}

\item{var_idx}{Integer. The index of the variable of interest (for multivariate models). Default is \code{1}.}

\item{field}{Character. The name of the slot to summarize (e.g., \code{"yhat_samples"}, \code{"beta_samples"}, \code{"phi_samples"}). Default is \code{"yhat_samples"}.}
}
\value{
A data frame with two columns:
\itemize{
\item \code{lower}: the 2.5\\% quantile of the posterior distribution.
\item \code{upper}: the 97.5\\% quantile of the posterior distribution.
}
}
\description{
This method computes 95\\% Bayesian credible intervals for the posterior samples of a selected parameter field in a \code{VGMSFH} object.
}
\details{
The function extracts posterior samples for the specified variable and then computes quantiles to form 95\\% credible intervals. This is useful for uncertainty quantification in model predictions or parameter estimates.
}
\examples{
library(vmsae)
example_model <- readRDS(system.file("example", "example_model.Rds", package = "vmsae"))
confint(example_model)  # Get credible intervals for predicted values
confint(example_model, field = "beta_samples")  # For fixed effects

}
