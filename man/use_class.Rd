% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.r
\name{use_class}
\alias{use_class}
\alias{use_pandas}
\alias{use_numpy}
\title{Python Methods for JSON Serialization}
\usage{
use_class(pyenv, method.def)

use_pandas(pyenv)

use_numpy(pyenv)
}
\arguments{
\item{pyenv}{The \code{PythonEnv} object.}

\item{method.def}{A file containing a Python function definition.
See 'details' for more information.}
}
\value{
(Invisibly) the \code{PythonEnv} object.
}
\description{
Add methods for JSON serialization of Python classes.
}
\details{
Support for JSON serialization of custom classes is achieved
  by defining new functions in Python with a special decorator to 
  register the function with \code{expyr} Python server. The function 
  must take a single argument and return a JSON string. A template 
  for supporting new classes is provided.  \code{transpyr} also 
  provides support for \code{pandas.core.frame.DataFrame}, 
  \code{pandas.core.series.Series}, and \code{numpy.ndarray objects} 
  which can be added via \code{use_pandas} and \code{use_numpy}.
}
\section{Functions}{
\itemize{
\item \code{use_pandas}: Add method for pandas DataFrames and Series.

\item \code{use_numpy}: Add method for numpy ndarrays.
}}

\examples{
\dontrun{
# View the template
file.show(system.file("py-src/_use_template.py", package = "transpyr"))

# view the numpy methods
file.show(system.file("py-src/use_numpy.py", package = "transpyr"))
# add numpy support to a PythonEnv object
use_numpy(pyenv)

# view the pandas methods
file.show(system.file("py-src/use_pandas.py", package = "transpyr"))
# add support to a PythonEnv object
use_pandas(pyenv)
}

}
