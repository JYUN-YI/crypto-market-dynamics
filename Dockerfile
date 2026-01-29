# Base image with Shiny
FROM rocker/shiny:4.3.2

# System dependencies (for tidyverse packages)
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    && rm -rf /var/lib/apt/lists/*

# Install R packages
RUN install2.r --error \
    shiny \
    dplyr \
    ggplot2 \
    readr \
    tidyr \
    lubridate \
    here \
    zoo \
    ggExtra \
    shinycssloaders

# Copy everything from local project to container
COPY . /app

# Set working directory to /app (HF container root)
WORKDIR /app

# Run Shiny app from dashboards folder
CMD ["R", "-e", "shiny::runApp('dashboards', host='0.0.0.0', port=7860)"]
