# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' Add slices and return vector of the sums of slices
#'
#' @param slicematrix A matrix of slices.
#' @return Returns the vector of the sums of the slices
#' @export
AddSlices_Rcpp <- function(slicematrix) {
    .Call(`_ambit_AddSlices_Rcpp`, slicematrix)
}

#' Add slices and return vector of the weighted sums of slices
#'
#' @param slicematrix A matrix of slices.
#' @param weightvector A vector of weights.
#' @return Returns the vector of the weighted sums of the slices
#' @export
AddWeightedSlices_Rcpp <- function(slicematrix, weightvector) {
    .Call(`_ambit_AddWeightedSlices_Rcpp`, slicematrix, weightvector)
}

