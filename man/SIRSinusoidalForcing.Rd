\name{SIRSinusoidalForcing}
\alias{SIRSinusoidalForcing}
\title{SIR model with sinusoidal forcing (P 5.1).}
\usage{
SIRSinusoidalForcing(pars = NULL, init = NULL, time = NULL, ...)
}
\arguments{
  \item{pars}{\code{\link{vector}} with 4 values: the death
  rate, the mean transmission rate, the amplitude of
  sinusoidal forcing, the frequency of oscillations and the
  recovery rate. The names for these values must be: "mu",
  "beta0", "beta1", "omega" and "gamma", respectively.}

  \item{init}{\code{\link{vector}} with 3 values: initial
  proportion of proportion of susceptibles, infectious and
  recovered. The names of these values must be "S", "I" and
  "R", respectively. All parameters must be positive and S
  + I <= 1.}

  \item{time}{time sequence for which output is wanted; the
  first value of times must be the initial time.}

  \item{...}{further arguments passed to
  \link[deSolve]{ode} function.}
}
\value{
\code{\link{list}}. The first element, \code{*$model}, is
the model function. The second, third and fourth elements
are the vectors (\code{*$pars}, \code{*$init},
\code{*$time}, containing the \code{pars}, \code{init} and
\code{time} arguments of the function. The fifth element
\code{*$results} is a \code{\link{data.frame}} with up to
as many rows as elements in time. First column contains the
time. Second, third and fourth columns contain the
proportion of susceptibles, infectious and recovered.
}
\description{
Solves a SIR model with sinusoidal forcing of the
transmission rate.
}
\details{
This is the R version of program 5.1 from page 160 of
"Modeling Infectious Disease in humans and animals" by
Keeling & Rohani.
}
\examples{
# Parameters and initial conditions.
parameters <- c(beta0 = 17 / 13, beta1 = 0.1,
                gamma = 1 / 13, omega = pi,
                mu = 1 / (50 * 365))

initials <- c(S = 1 / 17, I = 1e-4,
              R = 1 - 1 / 17 - 1e-4)

# Solve the system.
sir.sinusoidal.forcing <- SIRSinusoidalForcing(pars = parameters,
                                               init = initials,
                                               time = 0:(60 * 365))
}
\references{
Keeling, Matt J., and Pejman Rohani. Modeling infectious
diseases in humans and animals. Princeton University Press,
2008.
\href{http://www.modelinginfectiousdiseases.org/}{Modeling
Infectious Diseases in Humans and Animals}
}
\seealso{
\link[deSolve]{ode}.
}

