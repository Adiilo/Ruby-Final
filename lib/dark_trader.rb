require 'rubygems'
require 'nokogiri'
require 'open-uri'
def crypto_scrapper()
name_crypto=[]
price_crypto=[]
arr=[]
char = []
crypto = Hash.new
page = Nokogiri::HTML(open("https://coinmarketcap.com/"))
name = page.xpath('//div[@class="cmc-table__column-name sc-1kxikfi-0 eTVhdN"]/a[@class="cmc-link"]')
price = page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[4]/a')
name.each do |names|
  name_crypto << names.text
end
price.each do |prices|
  price_crypto << prices.text
end
100.times do |i|
  crypto[name_crypto[i]]=price_crypto[i]
  char[i] = "=>"
  arr[i] = name_crypto[i] +char[i]+ price_crypto[i]
  puts arr[i].gsub(/[,||$]/, "")
end
return true
end
crypto_scrapper