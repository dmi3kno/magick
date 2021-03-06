% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis.R
\name{analysis}
\alias{analysis}
\alias{image_compare}
\alias{image_compare_dist}
\alias{image_fft}
\title{Image Analysis}
\usage{
image_compare(image, reference_image, metric = "", fuzz = 0)

image_compare_dist(image, reference_image, metric = "", fuzz = 0)

image_fft(image)
}
\arguments{
\item{image}{magick image object returned by \code{\link[=image_read]{image_read()}} or \code{\link[=image_graph]{image_graph()}}}

\item{reference_image}{another image to compare to}

\item{metric}{string with a \href{http://www.imagemagick.org/script/command-line-options.php#metric}{metric}
from \link[=metric_types]{metric_types()} such as \code{"AE"} or \code{"phash"}}

\item{fuzz}{relative color distance (value between 0 and 100) to be considered similar
in the filling algorithm}
}
\description{
Functions for image calculations and analysis. This part of the package needs more work.
}
\details{
For details see \href{https://www.imagemagick.org/Magick++/Image++.html}{Image++}
documentation. Short descriptions:
\itemize{
\item \link{image_compare} calculates a metric by comparing image with a reference image.
\item \link{image_fft} returns Discrete Fourier Transform (DFT) of the image as a
magnitude / phase image pair. I wish I knew what this means.
}

Here \code{image_compare()} is vectorized over the first argument and returns the diff image
with the calculated distortion value as an attribute.
}
\examples{
out1 <- image_blur(logo, 3)
out2 <- image_oilpaint(logo, 3)
input <- c(logo, out1, out2, logo)
if(magick_config()$version >= "6.8.7"){
  diff_img <- image_compare(input, logo, metric = "AE")
  attributes(diff_img)
}
}
\seealso{
Other image: 
\code{\link{_index_}},
\code{\link{animation}},
\code{\link{attributes}()},
\code{\link{color}},
\code{\link{composite}},
\code{\link{device}},
\code{\link{edges}},
\code{\link{editing}},
\code{\link{effects}()},
\code{\link{fx}},
\code{\link{geometry}},
\code{\link{morphology}},
\code{\link{ocr}},
\code{\link{options}()},
\code{\link{painting}},
\code{\link{segmentation}},
\code{\link{transform}()},
\code{\link{video}}
}
\concept{image}
