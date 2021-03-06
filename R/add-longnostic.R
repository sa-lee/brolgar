#' Add a longnostic to a dataframe
#' 
#' Match a longnostic to the id of a dataframe. This saves you creating a
#'   longnostic and then joining it back to a dataframe
#' @inheritParams l_longnostic
#' @name add_longnostic
#' @examples
#' add_l_max(data = wages, id = id, var = lnw)
#' add_l_diff(data = wages, id = id, var = lnw)
#' add_l_diff(data = wages, id = id, var = lnw, lag = 2)
#' @export
add_l_max <- function(data,
                      id,
                      var){
  
  quo_id <- rlang::enquo(id)
  quo_var <- rlang::enquo(var)
  
  str_id <- rlang::as_label(quo_id)

l_max(data = data,
      id = !!quo_id,
      var = !!quo_var) %>%
  dplyr::left_join(data,
                   by = str_id)

}

#' @rdname add_longnostic
#' @export
add_l_diff <- function(data,
                       id,
                       var,
                       lag = 1){
  
  quo_id <- rlang::enquo(id)
  quo_var <- rlang::enquo(var)
  
  str_id <- rlang::as_label(quo_id)

l_diff(data = data,
      id = !!quo_id,
      var = !!quo_var,
      lag = lag) %>%
  dplyr::left_join(data,
                   by = str_id)

}

#' @rdname add_longnostic
#' @export
add_l_mean <- function(data,
                       id,
                       var){
  
  quo_id <- rlang::enquo(id)
  quo_var <- rlang::enquo(var)
  
  str_id <- rlang::as_label(quo_id)

l_mean(data = data,
      id = !!quo_id,
      var = !!quo_var) %>%
  dplyr::left_join(data,
                   by = str_id)

}

#' @rdname add_longnostic
#' @export
add_l_median <- function(data,
                         id,
                         var){
  
  quo_id <- rlang::enquo(id)
  quo_var <- rlang::enquo(var)
  
  str_id <- rlang::as_label(quo_id)

l_median(data = data,
         id = !!quo_id,
         var = !!quo_var) %>%
  dplyr::left_join(data,
                   by = str_id)

}

#' @rdname add_longnostic
#' @export
add_l_min <- function(data,
                      id,
                      var){
  
  quo_id <- rlang::enquo(id)
  quo_var <- rlang::enquo(var)
  
  str_id <- rlang::as_label(quo_id)

l_min(data = data,
      id = !!quo_id,
      var = !!quo_var) %>%
  dplyr::left_join(data,
                   by = str_id)

}

#' @rdname add_longnostic
#' @export
add_l_n_obs <- function(data,
                        id){
  
  quo_id <- rlang::enquo(id)
  str_id <- rlang::as_label(quo_id)

l_n_obs(data = data,
        id = !!quo_id) %>%
  dplyr::left_join(data,
                   by = str_id)

}

#' @rdname add_longnostic
#' @export
add_l_q1 <- function(data,
                     id,
                     var){
  
  quo_id <- rlang::enquo(id)
  quo_var <- rlang::enquo(var)
  
  str_id <- rlang::as_label(quo_id)

l_q1(data = data,
      id = !!quo_id,
      var = !!quo_var) %>%
  dplyr::left_join(data,
                   by = str_id)

}

#' @rdname add_longnostic
#' @export
add_l_q3 <- function(data,
                     id,
                     var){
  
  quo_id <- rlang::enquo(id)
  quo_var <- rlang::enquo(var)
  
  str_id <- rlang::as_label(quo_id)

l_q3(data = data,
      id = !!quo_id,
      var = !!quo_var) %>%
  dplyr::left_join(data,
                   by = str_id)

}

#' @rdname add_longnostic
#' @export
add_l_sd <- function(data,
                     id,
                     var){
  
  quo_id <- rlang::enquo(id)
  quo_var <- rlang::enquo(var)
  
  str_id <- rlang::as_label(quo_id)

l_sd(data = data,
      id = !!quo_id,
      var = !!quo_var) %>%
  dplyr::left_join(data,
                   by = str_id)

}

#' @rdname add_longnostic
#' @export
add_l_slope <- function(data,
                        id,
                        formula){
  
  quo_id <- rlang::enquo(id)
  quo_formula <- rlang::enquo(formula)
  
  str_id <- rlang::as_label(quo_id)
  
l_slope(data = data,
      id = !!quo_id,
      formula = !!quo_formula) %>%
  dplyr::left_join(data,
                   by = str_id)

}
