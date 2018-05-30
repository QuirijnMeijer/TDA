# Import the required library
library("TDA")

# Generate a barcode
Barcode <- function(X, MaxDim = 2, MaxScale = 5) {
  Diag <- ripsDiag(X, MaxDim, MaxScale, library = "GUDHI", printProgress = TRUE)
  plot(Diag[["diagram"]], barcode = TRUE)
}

# Draw a persistence diagram
PersistenceDiagram <- function(X, MaxDim = 2, MaxScale = 5) {
  Diag <- ripsDiag(X, MaxDim, MaxScale, library = "GUDHI", printProgress = TRUE)
  plot(Diag[["diagram"]])
}

# Plot the i-th persistence landscape of the j-th persistent homology module
Landscape <- function (X, i, j, MaxDim = 2, MaxScale = 5) {
  Diag <- ripsDiag(X, MaxDim, MaxScale, library = "GUDHI", printProgress = TRUE)
  Seq <- seq(0, MaxScale, length = 1000)
  ijLandscape <- landscape(Diag[["diagram"]], dimension = j, KK = i, Seq)
  plot(Seq, ijLandscape, type="l")
}