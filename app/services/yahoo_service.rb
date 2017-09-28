class YahooService
  API_KEY = "5ADK32C94DEZHK1A"

  def price(ticker, date)
    response = HTTParty.get(url(ticker))
    json = JSON.parse(response.body)
    json['Time Series (Daily)'][date.strftime("%Y-%m-%d")]["4. close"]
  end

  def url(ticker)
    "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=" + ticker + "&apikey="+ API_KEY + "&outputsize=full"
  end
end
