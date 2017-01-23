#' Load a multiple packages, install most recent versions if missing
#'
#' @param pkgs character vector of packages names.
#' @param repos character vector, the base URL(s) of the repositories to use,
#' e.g., the URL of a CRAN mirror such as "https://cloud.r-project.org".
#' @param ... arguments passed to \code{\link{install.packages}}.
#'
#' @examples
#' library_install('utils')
#'
#' \dontrun{
#' packages <- c('networkD3', 'coreSim')
#' library_install(packages)
#' }
#'
#' @importFrom utils install.packages installed.packages
#'
#' @export

library_install <- function(pkgs, repos = 'http://cran.us.r-project.org', ...) {
    # Test if argument values are valid
    if (!is.vector(pkgs) || !is.character(pkgs))
        stop('pkgs must be a character vector')
    if (!is.character(repos))
        stop('repos must be a character string.')

    # Find packages that have not been installed
    pkgs_missing <- pkgs[!(pkgs %in% installed.packages()[, 1])]

    # Install missing packages
    if (length(pkgs_missing) > 0) {
        install.packages(pkgs_missing, repos = repos, ...)
    }

    # Load all packages
    invisible(
        lapply(pkgs, library, character.only = TRUE)
    )
}

