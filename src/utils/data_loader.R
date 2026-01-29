clean_crypto <- function(df) {
  df %>%
    mutate(
      timeOpen  = lubridate::parse_date_time(timeOpen, orders = c("ymd HMS", "ymd HM", "ymd")),
      timeClose = lubridate::parse_date_time(timeClose, orders = c("ymd HMS", "ymd HM", "ymd")),
      timeHigh  = lubridate::parse_date_time(timeHigh, orders = c("ymd HMS", "ymd HM", "ymd")),
      timeLow   = lubridate::parse_date_time(timeLow, orders = c("ymd HMS", "ymd HM", "ymd")),
      timestamp = lubridate::parse_date_time(timestamp, orders = c("ymd HMS", "ymd HM", "ymd")),
      open      = as.numeric(open),
      high      = as.numeric(high),
      low       = as.numeric(low),
      close     = as.numeric(close),
      volume    = as.numeric(volume),
      marketCap = as.numeric(marketCap),
      name      = as.character(name)
    ) %>%
    tidyr::drop_na() %>%
    dplyr::arrange(timeOpen)
}
