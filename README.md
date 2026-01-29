# 🪙 Crypto Market Dynamics

## 📌 Project Objective
This project investigates the cryptocurrency market from 2010 to 2025, focusing on return behavior, volatility patterns, and market structure. The goal is to understand how crypto returns fluctuate over time, how risks manifest across different coins, and how market dominance affects performance.

Key questions addressed:

- How does crypto volatility change over time and across market regimes?  
- Are returns stationary, and what transformations are needed for modeling?  
- What are the main risk factors, including drawdowns, clustering of volatility, and extreme events?  
- How concentrated is the market, and which coins dominate?  
- How do different cryptocurrencies compare to each other within the market?

## 🏗️ Project Structure
```bash
📦crypto-market-dynamics/
├── crypto-market-dynamics.Rproj
├── README.md
├── .gitignore
├── renv.lock
├── renv/
├── app.R
│
├── data/
│   ├── raw/
│   │   ├── BNB_merged_2017_to_2025.csv
│   │   ├── BTC_merged_2017_to_2025.csv
│   │   └── ETH_merged_2017_to_2025.csv
│   │
│   └── processed/
│       ├── BNB_clean.csv
│       ├── BTC_clean.csv
│       ├── ETH_clean.csv
│       ├── BNB_daily_returns.csv
│       ├── BTC_daily_returns.csv
│       └── ETH_daily_returns.csv
│
├── notebooks/
│   ├── 00_setup_environment.Rmd
│   ├── 01_data_ingestion_cleaning.Rmd
│   ├── 02_daily_returns_analysis.Rmd
│   ├── 03_stationarity_tests.Rmd
│   ├── 04_arima_garch_modeling.Rmd
│   ├── 05_volatility_regime_analysis.Rmd
│   ├── 06_drawdown_crash_risk.Rmd
│   ├── 07_tail_risk_extreme_behavior.Rmd
│   ├── 08_market_cap_analysis.Rmd
│   └── 09_benchmarking_within_the_cryptocurrency_market.Rmd
│
├── src/
│   └── utils/
│       ├── data_loader.R
│       └── return_calculations.R
│
└── dashboards/
    ├── ui.R
    └── server.R

```

## 🔍 Exploratory Data Analysis (EDA)
- **Daily Return Analysis** — Distribution, summary statistics, and volatility patterns  
- **Stationarity Tests & Transformations** — ADF, KPSS, and PP tests; rationale for log returns  
- **Volatility Modeling** — ARIMA and GARCH for forecasting volatility  
- **Volatility Regimes** — Identification and visualization of high- and low-volatility periods  
- **Drawdown & Crash Risk** — Measuring maximum drawdowns and extreme losses  
- **Tail Risk Analysis** — Skewness, kurtosis, QQ plots, and risk metrics  
- **Market Capitalization & Structure** — Market dominance and concentration trends  
- **Crypto Benchmarking** — Comparing performance across major coins

## 🚀 Interactive Application
- Shiny dashboards for exploring returns, volatility regimes, and risk measures  
- Visualizations of drawdowns, tail risk, and market concentration

## ⚙️ Technologies Used
- Programming Language: R
- Data Manipulation: tidyverse, lubridate
- Time series & Econometrics: tseries, forecast, rugarch
- Data Visualization: ggplot2, scales
- Time Series Forecasting Models: ARIMA, GARCH
- Deployment: Shiny, Docker, Hugging Face Spaces
- Version Control: Git, GitHub
- Development Environment: RStudio

## 📎 Dataset
- **Raw Data:** Kaggle - Crypto_coins_dataset (2010-2025)
- **Processed Data:** Available in this GitHub repository

## 🎨 Portfolio Showcase
Please view the report and interact with the live application here:

- [Kimberly Lin | Portfolio | 2010-2025 Crypto Market Dynamics](https://kimberlylin.webflow.io/resources/2010-2025-crypto-market-dynamics)
- [Shiny App on Hugging Face Spaces](https://huggingface.co/spaces/jyunyilin/crypto-market-dynamics)

## ✨ Future Improvements
- Extend forecasting models for tail risk and extreme events  
- Include additional crypto assets and traditional benchmarks 
