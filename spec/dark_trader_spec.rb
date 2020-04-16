
require_relative '../lib/dark_trader.rb'

describe "the crypto_scrapper method:" do
  it "should return an array with names and prices of cryptocurrencies :" do
    expect(crypto_scrapper).to eq(true)
  end
end