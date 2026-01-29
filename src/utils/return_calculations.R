# ============================================================
# Return Calculations Utilities
# ============================================================

#' Calculate simple daily returns
#'
#' @param df A cleaned crypto data frame
#' @param price_col Column name for price (default = "close")
#' @param time_col Column name for time ordering (default = "timeClose")
#'
#' @return Data frame with daily_return column
calc_simple_returns <- function(
    df,
    price_col = "close",
    time_col  = "timeClose"
) {
  
  df %>%
    dplyr::arrange(.data[[time_col]]) %>%
    dplyr::mutate(
      daily_return = (.data[[price_col]] / dplyr::lag(.data[[price_col]])) - 1
    ) %>%
    tidyr::drop_na(daily_return)
}

# ------------------------------------------------------------

#' Calculate log returns
#'
#' @param df A cleaned crypto data frame
#'
#' @return Data frame with log_return column
calc_log_returns <- function(
    df,
    price_col = "close",
    time_col  = "timeClose"
) {
  
  df %>%
    dplyr::arrange(.data[[time_col]]) %>%
    dplyr::mutate(
      log_return = log(.data[[price_col]]) -
        log(dplyr::lag(.data[[price_col]]))
    ) %>%
    tidyr::drop_na(log_return)
}

# ------------------------------------------------------------

#' Calculate both simple and log returns
#'
#' @param df A cleaned crypto data frame
#'
#' @return Data frame with daily_return & log_return
calc_all_returns <- function(
    df,
    price_col = "close",
    time_col  = "timeClose"
) {
  
  df %>%
    dplyr::arrange(.data[[time_col]]) %>%
    dplyr::mutate(
      daily_return = (.data[[price_col]] / dplyr::lag(.data[[price_col]])) - 1,
      log_return   = log(.data[[price_col]]) -
        log(dplyr::lag(.data[[price_col]]))
    ) %>%
    tidyr::drop_na()
}

# ------------------------------------------------------------

compute_drawdown <- function(df, return_col = "log_return") {
  
  df %>%
    mutate(
      cum_return = cumsum(.data[[return_col]]),
      cum_max    = cummax(cum_return),
      drawdown   = cum_return - cum_max
    )
}

# ------------------------------------------------------------
#' @param threshold Numeric, e.g., -0.10 for -10% drop
#' @return df with crash column (TRUE/FALSE)
detect_crash <- function(df, threshold = -0.10) {
  df %>%
    mutate(crash = log_return <= threshold)
}
