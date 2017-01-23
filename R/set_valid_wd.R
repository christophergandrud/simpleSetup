#' Sets valid working directory from vector of possible directories
#'
#' @param possible character vector of possible working directores
#'
#' @details Sets the working directory to the first valid directory from a
#' list of possible directories.
#'
#' @examples
#' \dontrun{
#' set_valid_wd(c('/examples/directory1', '/anotherExample/directory2'))
#' }
#'
#' @export

set_valid_wd <- function(possible) {
    for (i in possible) {
        if (file.exists(i)) {
            setwd(i)
            message(sprintf('Working directory set to: %s', i))
            break
        }
        if (possible[length(possible)] == i) message(
            'No valid directory found.')
    }
}
