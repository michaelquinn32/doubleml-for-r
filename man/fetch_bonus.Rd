% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasets.R
\name{fetch_bonus}
\alias{fetch_bonus}
\title{Data set on the Pennsylvania Reemployment Bonus experiment.}
\usage{
fetch_bonus(return_type = "DoubleMLData", polynomial_features = FALSE)
}
\arguments{
\item{return_type}{(\code{character(1)}) \cr
If \code{"DoubleMLData"}, returns a \code{DoubleMLData} object.
If \code{"data.frame"} returns a \code{data.frame()}.
If \code{"data.table"} returns a \code{data.table()}. Default is \code{"DoubleMLData"}.}

\item{polynomial_features}{(\code{logical(1)}) \cr
If \code{TRUE} polynomial freatures are added (see replication file of
Chernozhukov et al. (2018)).}
}
\value{
A data object according to the choice of \code{return_type}.
}
\description{
Preprocessed data set on the Pennsylvania Reemploymnent Bonus experiment.
The raw data files are preprocessed to reproduce the examples in
Chernozhukov et al. (2020).
An internet connection is required to sucessfully download the data set.
}
\details{
Variable description, based on the supplementary material of
Chernozhukov et al. (2020):
\itemize{
\item abdt:  chronological time of enrollment of each claimant in the
Pennsylvania reemployment bonus experiment.
\item tg:  indicates the treatment group (bonus amount - qualification period)
of each claimant.
\item inuidur1:  a measure of length (in weeks) of the first spell of
unemployment
\item inuidur2:  a second measure for the length (in weeks) of
\item female:  dummy variable; it indicates if the claimant's sex is
female (=1) or male (=0).
\item black: dummy variable; it indicates a person of black race (=1).
\item hispanic:  dummy variable; it indicates a person of hispanic race (=1).
\item othrace: dummy variable; it indicates a non-white, non-black,
not-hispanic person (=1).
\item dep1: dummy variable; indicates if the number of dependents of each
claimant is equal to 1 (=1).
\item dep2: dummy variable; indicates if the number of dependents of each
claimant is equal to 2 (=1).
\item q1-q6: six dummy variables indicating the quarter of experiment during
which each claimant enrolled.
\item recall:  takes the value of 1 if the claimant answered ``yes'' when was
asked if he/she had any expectation to be recalled
\item agelt35: takes the value of 1 if the claimant's age is less than 35
and 0 otherwise.
\item agegt54: takes the value of 1 if the claimant's age is more than 54
and 0 otherwise.
\item durable: it takes the value of 1 if the occupation of the claimant was in
the sector of durable manufacturing and 0 otherwise.
\item nondurable:  it takes the value of 1 if the occupation of the claimant was
in the sector of nondurable manufacturing and 0 otherwise.
\item lusd:  it takes the value of 1 if the claimant filed in Coatesville,
Reading, or Lancaster and 0 otherwise.
\item These three sites were considered to be located in areas characterized by
low unemployment rate and short duration of unemployment.
\item husd:  it takes the value of 1 if the claimant filed in Lewistown,
Pittston, or Scranton and 0 otherwise.
\item These three sites were considered to be located in areas characterized by
high unemployment rate and short duration of unemployment.
\item muld:  it takes the value of 1 if the claimant filed in Philadelphia-North,
Philadelphia-Uptown, McKeesport, Erie, or Butler and 0 otherwise.
\item These three sites were considered to be located in areas characterized by
moderate unemployment rate and long duration of unemployment."
}

The supplementary data of the study by Chernozhukov et al. (2018) is
available at \url{https://academic.oup.com/ectj/article/21/1/C1/5056401#supplementary-data}.

The supplementary data of the study by Bilias (2000) is available at
\url{http://qed.econ.queensu.ca/jae/2000-v15.6/bilias/}.
}
\examples{
library(DoubleML)
df_bonus = fetch_bonus(return_type = "data.table")
obj_dml_data_bonus = DoubleMLData$new(df_bonus,
  y_col = "inuidur1",
  d_cols = "tg",
  x_cols = c(
    "female", "black", "othrace", "dep1", "dep2",
    "q2", "q3", "q4", "q5", "q6", "agelt35", "agegt54",
    "durable", "lusd", "husd"
  )
)
obj_dml_data_bonus
}
\references{
Bilias Y. (2000), Sequential Testing of Duration Data:
The Case of Pennsylvania ‘Reemployment Bonus’ Experiment. Journal of Applied
Econometrics, 15(6): 575-594.

Chernozhukov, V., Chetverikov, D., Demirer, M., Duflo, E.,
Hansen, C., Newey, W. and Robins, J. (2018), Double/debiased machine learning
for treatment and structural parameters.
The Econometrics Journal, 21: C1-C68. \doi{10.1111/ectj.12097}.
}
