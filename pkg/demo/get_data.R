### By Marius Hofert

## This script (and qrmtools::get_data) 'shows' how we obtained the data in
## qrmdata. For this script to run, you need all appearing .csv files to be
## in ../misc (as is the case for the *source code* of qrmdata).

## Note: The data obtained online for free can and indeed does change over time.
## Example:
## 2019-12-02: Yahoo Finance provides BTC data only over a maximal range of about
##             five years in the past, not since the earliest point in time anymore:
##             dat <- getSymbols("BTC-USD", from = "1900-01-01", to = "2019-11-30", auto.assign = FALSE)
##             head(dat) # => 2014-09-17 (on 2019-12-02).
##             Also, the data does not coincide with data previously drawn for
##             overlapping days, see for example:
##             Ad(dat[index(dat) == "2015-11-30",]) # => 377.321
##             crypto[index(crypto) == "2015-11-30","BTC"] # => 377.97
##             Note: These differences can be quite more drastic.


### Setup ######################################################################

## Packages
library(qrmtools) # for get_data()
library(xts)

## Last trading day we consider
end <- "2015-12-31"


### 1 Stock data ###############################################################

## Radioshack
## Defaulted early 2015 => Yahoo Finance only has
## https://www.google.com/finance/historical?q=OTCMKTS%3ARSHCQ&ei=N_CAVvnUKsjjsAHJ3YvwDg
## but no adjusted close price (and values differ slightly)
## => Use the data from Yahoo Finance as of 2015-01-21 here (collected by A. J. McNeil)
RSHCQ <- read.table("../misc/data_RSHCQ.csv", sep = ",", header = TRUE, row.names = 1) # get data
dates <- as.Date(row.names(RSHCQ), format = "%Y-%m-%d") # get dates
RSHCQ <- xts(RSHCQ, dates)[,"Adj.Close"] # create an xts object
colnames(RSHCQ) <- "RSHCQ"
save(RSHCQ, file = "RSHCQ.rda", compress = "xz")


### 2 Stock index data #########################################################

## S&P 500
SP500 <- get_data("^GSPC", to = end)
save(SP500, file = "SP500.rda", compress = "xz")

## Dow Jones
DJ <- get_data("^DJI", to = end)
save(DJ, file = "DJ.rda", compress = "xz")

## NASDAQ 100
NASDAQ <- get_data("^NDX", to = end)
save(NASDAQ, file = "NASDAQ.rda", compress = "xz")

## FTSE 100
FTSE <- get_data("^FTSE", to = end)
save(FTSE, file = "FTSE.rda", compress = "xz")

## SMI (Swiss Market Index)
SMI <- get_data("^SSMI", to = end)
save(SMI, file = "SMI.rda", compress = "xz")

## Euro Stoxx 50 (stock index of Eurozone stocks)
EURSTOXX <- get_data("^STOXX50E", to = end)
save(EURSTOXX, file = "EURSTOXX.rda", compress = "xz")

## CAC (Cotation Assistee en Continu)
CAC <- get_data("^FCHI", to = end)
save(CAC, file = "CAC.rda", compress = "xz")

## DAX (Deutscher Aktienindex)
DAX <- get_data("^GDAXI", to = end)
save(DAX, file = "DAX.rda", compress = "xz")

## CSI (China Securities Index)
CSI <- get_data("000300.SS", to = end)
save(CSI, file = "CSI.rda", compress = "xz")

## HSI (Hang Seng Index; open to overseas investors)
HSI <- get_data("^HSI", to = end)
save(HSI, file = "HSI.rda", compress = "xz")

## SSEC (Shanghai Stock Exchange Composite Index; restricted to domestic investors)
SSEC <- get_data("000001.SS", to = end)
save(SSEC, file = "SSEC.rda", compress = "xz")

## NIKKEI
NIKKEI <- get_data("^N225", to = end)
save(NIKKEI, file = "NIKKEI.rda", compress = "xz")


### 3 Constituents data ########################################################

### 3.1 S&P 500 ################################################################

## As constituent data is not available on finance.yahoo.com, we do the following:
## 1) Copy the ticker table from https://www.cboe.com/products/snp500.aspx without
##    header and paste it to a .csv (e.g. in LibreOffice).
## 2) Remove all columns except: Ticker, GICS, GICS subsectors
## 3) Save it as a .csv file.

## S&P 500 constituents
## See https://www.cboe.com/products/snp500.aspx (updated 2015-10-12)
SP500_const_info <- read.table("../misc/data_SP500_const_tab.csv", sep = ",")
colnames(SP500_const_info) <- c("Ticker", "Sector", "Subsector")
SP500_const <- get_data(SP500_const_info[,1], to = end) # get data for these tickers (takes a while)
SP500_const <- round(SP500_const, digits = 2) # round to fit in a single R package
save(SP500_const, SP500_const_info, file = "SP500_const.rda", compress = "xz")

if(FALSE) {
    image(x = index(SP500_const), y = seq_len(ncol(SP500_const)), z = is.na(SP500_const),
          col = c("white", "black"), xlab = "Time t", ylab = "Stock j",
          main = "Plot of NAs among the S&P 500 constituents")
    mtext("Black: NA; White: Data available", side = 4, line = 1, adj = 0)
}


### 3.2 Other indexes ##########################################################

## For all but S&P 500:
## 1) finance.yahoo.com -> ^DJI -> Components
## 2) Download the table to a .csv file (by copy-paste)
## 3) Remove everything but the first column with the tickers (keep the last line break)

## Dow Jones constituents
## See https://finance.yahoo.com/q/cp?s=%5EDJI (drawn on 2015-12-10)
DJ_const_info <- read.table("../misc/data_DJ_const_tab.csv")
colnames(DJ_const_info) <- "Ticker"
DJ_const <- get_data(DJ_const_info[,1], to = end)
save(DJ_const, file = "DJ_const.rda", compress = "xz") # Note: No info besides tickers available => don't save *_const_info

## FTSE 100 constituents
## See https://uk.finance.yahoo.com/q/cp?s=%5EFTSE (drawn on 2015-12-10)
## Note: ncol(FTSE_const)=98 only
FTSE_const_info <- read.table("../misc/data_FTSE_const_tab.csv")
colnames(FTSE_const_info) <- "Ticker"
FTSE_const <- get_data(FTSE_const_info[,1], to = end)
save(FTSE_const, file = "FTSE_const.rda", compress = "xz") # Note: No info besides tickers available => don't save *_const_info

## SMI constituents
## See https://uk.finance.yahoo.com/q/cp?s=%5ESSMI (drawn on 2015-12-10)
## Note: 6/20 stocks missing
if(FALSE) {
    SMI_const_info <- read.table("../misc/data_SMI_const_tab.csv")
    colnames(SMI_const_info) <- "Ticker"
    SMI_const <- get_data(SMI_const_info[,1], to = end)
    save(SMI_const, file = "SMI_const.rda", compress = "xz") # Note: No info besides tickers available => don't save *_const_info
}

## Euro Stoxx 50 constituents
## See https://uk.finance.yahoo.com/q/cp?s=%5ESTOXX50E (drawn on 2015-12-10)
## Note: 2 stocks missing
EURSTX_const_info <- read.table("../misc/data_EURSTX_const_tab.csv")
colnames(EURSTX_const_info) <- "Ticker"
EURSTX_const <- get_data(EURSTX_const_info[,1], to = end)
save(EURSTX_const, file = "EURSTX_const.rda", compress = "xz") # Note: No info besides tickers available => don't save *_const_info

## HSI constituents
## See https://uk.finance.yahoo.com/q/cp?s=%5EHSI (drawn on 2015-12-10)
HSI_const_info <- read.table("../misc/data_HSI_const_tab.csv")
colnames(HSI_const_info) <- "Ticker"
HSI_const <- get_data(HSI_const_info[,1], to = end)
save(HSI_const, file = "HSI_const.rda", compress = "xz") # Note: No info besides tickers available => don't save *_const_info

## Note: NIKKEI constituents not available


### 4 FX data ##################################################################

## Check that 1/"1 unit cur A in cur B" ~= "cur B in cur A"
if(FALSE) {
    GBP_USD <- get_data("GBP/USD", to = end, src = "oanda") # 1 GBP in USD
    USD_GBP <- get_data("USD/GBP", to = end, src = "oanda") # 1 USD in GBP
    ## Check that 1/GBP_USD ~= USD_GBP
    plot(USD_GBP)
    lines(1/GBP_USD, col = "blue")
    summary(USD_GBP-1/GBP_USD) # as good as equal
}

## Choose a reasonable 'from' date
## FX involving EUR are only available >= 1998-12-14
from <- "2000-01-01"


### 4.1 */USD ##################################################################

## CAD/USD
CAD_USD <- get_data("CAD/USD", from = from, to = end, src = "oanda")
head(CAD_USD)
save(CAD_USD, file = "CAD_USD.rda", compress = "xz")

## GBP/USD
GBP_USD <- get_data("GBP/USD", from = from, to = end, src = "oanda")
head(GBP_USD)
save(GBP_USD, file = "GBP_USD.rda", compress = "xz")

## EUR/USD
EUR_USD <- get_data("EUR/USD", from = from, to = end, src = "oanda")
head(EUR_USD)
save(EUR_USD, file = "EUR_USD.rda", compress = "xz")

## CHF/USD
CHF_USD <- get_data("CHF/USD", from = from, to = end, src = "oanda")
head(CHF_USD)
save(CHF_USD, file = "CHF_USD.rda", compress = "xz")

## JPY/USD
## Note: We use JPY/USD = 1/(USD/JPY) here since JPY/USD only
##       has four digits which is to little here
JPY_USD <- 1/get_data("USD/JPY", from = from, to = end, src = "oanda")
colnames(JPY_USD) <- "JPY/USD" # adjust accordingly
head(JPY_USD)
save(JPY_USD, file = "JPY_USD.rda", compress = "xz")

## CNY/USD
CNY_USD <- get_data("CNY/USD", from = from, to = end, src = "oanda")
head(CNY_USD)
save(CNY_USD, file = "CNY_USD.rda", compress = "xz")


### 4.2 */GBP ##################################################################

## CAD/GBP
CAD_GBP <- get_data("CAD/GBP", from = from, to = end, src = "oanda")
head(CAD_GBP)
save(CAD_GBP, file = "CAD_GBP.rda", compress = "xz")

## GBP/GBP
USD_GBP <- get_data("USD/GBP", from = from, to = end, src = "oanda")
head(USD_GBP)
save(USD_GBP, file = "USD_GBP.rda", compress = "xz")

## EUR/GBP
EUR_GBP <- get_data("EUR/GBP", from = from, to = end, src = "oanda")
head(EUR_GBP)
save(EUR_GBP, file = "EUR_GBP.rda", compress = "xz")

## CHF/GBP
CHF_GBP <- get_data("CHF/GBP", from = from, to = end, src = "oanda")
head(CHF_GBP)
save(CHF_GBP, file = "CHF_GBP.rda", compress = "xz")

## JPY/GBP
## Note: We use JPY/GBP = 1/(GBP/JPY) here since JPY/GBP only
##       has four digits which is to little here
JPY_GBP <- 1/get_data("GBP/JPY", from = from, to = end, src = "oanda")
colnames(JPY_GBP) <- "JPY/GBP" # adjust accordingly
head(JPY_GBP)
save(JPY_GBP, file = "JPY_GBP.rda", compress = "xz")

## CNY/GBP
CNY_GBP <- get_data("CNY/GBP", from = from, to = end, src = "oanda")
head(CNY_GBP)
save(CNY_GBP, file = "CNY_GBP.rda", compress = "xz")


### 5 Interest rate data #######################################################

### 5.1 Canada #################################################################

## Get data from http://www.bankofcanada.ca/rates/interest-rates/bond-yield-curves/
ZCB_CAD <- read.csv("data_yield_curves_CA.csv", header = TRUE, na.strings = " na", row.names = 1)
head(ZCB_CAD) # quick look
ZCB_CAD <- ZCB_CAD[,-ncol(ZCB_CAD)] # remove last (empty) column
## Pick out rows with *all* available data only
ZCB_CAD <- ZCB_CAD[apply(!is.na(ZCB_CAD), 1, all),]
## Convert to % (as ZCB_USD below)
ZCB_CAD <- 100 * ZCB_CAD
## Create Date object
dates <- as.Date(row.names(ZCB_CAD), format = "%Y-%m-%d")
## Create xts object
ZCB_CAD <- xts(ZCB_CAD, dates)
## Fix column names
clnms <- colnames(ZCB_CAD)
clnms <- gsub("YR", "y", gsub("ZC", "", clnms)) # remove leading and trailing characters
clnms <- sapply(clnms, function(x) { # insert "."
    if(nchar(x) == 4) { # insert "." after first char
        gsub('^(.{1})(.*)$', '\\1.\\2', x)
    } else { # insert "." after first char
        gsub('^(.{2})(.*)$', '\\1.\\2', x)
    }
})
colnames(ZCB_CAD) <- clnms
head(ZCB_CAD)
## Save
save(ZCB_CAD, file = "ZCB_CAD.rda", compress = "xz")

## Plot
if(FALSE)
    plot.zoo(ZCB_CAD, screens = 1, col = adjustcolor("black", alpha.f = 0.05))


### 5.2 US #####################################################################

## Get data from https://www.quandl.com/data/FED/SVENY-US-Treasury-Zero-Coupon-Yield-Curve
ZCB_USD <- get_data("FED/SVENY", to = end, src = "quandl")
head(ZCB_USD) # quick look
## Pick out rows with *all* available data only
ZCB_USD <- ZCB_USD[apply(!is.na(ZCB_USD), 1, all),]
## Fix column names
clnms <- colnames(ZCB_USD)
clnms <- paste0(gsub("SVENY", "", clnms),"y") # remove leading characters and append "y"
clnms[1:9] <- substr(clnms[1:9], 2, 3) # remove leading "0"
colnames(ZCB_USD) <- clnms
head(ZCB_USD)
## Save
save(ZCB_USD, file = "ZCB_USD.rda", compress = "xz")

## Plot
if(FALSE)
    plot.zoo(ZCB_USD, screens = 1, col = adjustcolor("black", alpha.f = 0.05))


### 6 Volatility data ##########################################################

## VIX
VIX <- get_data("^VIX", to = end)
save(VIX, file = "VIX.rda", compress = "xz")


### 7 Commodity data ###########################################################

## Oil
## Note: - Brent Crude is the benchmark (https://en.wikipedia.org/wiki/Brent_Crude)
##       - See https://www.quandl.com/data/FRED?keyword=dcoil for the tickers
##         => https://www.quandl.com/data/FRED/DCOILBRENTEU-Crude-Oil-Prices-Brent-Europe
##       - FRED = Federal Reserve Economic Data => FRED data can also be directly
##         obtained via getSymbols (and thus get_data).
##       - get_data("DCOILBRENTEU", to = end, src = "FRED") would have also worked
OIL_Brent <- get_data("FRED/DCOILBRENTEU", to = end, src = "quandl") # Brent Crude price in USD per barrel (USD/bbl)
colnames(OIL_Brent) <- "OIL_Brent"
stopifnot(!is.na(OIL_Brent))
save(OIL_Brent, file = "OIL_Brent.rda", compress = "xz")

## Gold
## See https://www.quandl.com/data/WGC/GOLD_DAILY_USD-Gold-Prices-Daily-Currency-USD (WGC = World Gold Council)
GOLD <- get_data("WGC/GOLD_DAILY_USD", to = end, src = "quandl")
colnames(GOLD) <- "GOLD"
stopifnot(!is.na(GOLD))
save(GOLD, file = "GOLD.rda", compress = "xz")


### 8 Cryptocurrencies #########################################################

end <- "2019-11-30" # end date chosen here

## Get Cryptocurrencies (1 unit in USD)
BTC_USD <- get_data("BTC-USD", to = end) # Bitcoin
ETH_USD <- get_data("ETH-USD", to = end) # Ethereum
LTC_USD <- get_data("LTC-USD", to = end) # Litecoin
XRP_USD <- get_data("XRP-USD", to = end) # Ripple
crypto <- do.call(merge, list(BTC_USD, ETH_USD, LTC_USD, XRP_USD))
colnames(crypto) <- c("BTC", "ETH", "LTC", "XRP")
save(crypto, file = "crypto.rda", compress = "xz")

