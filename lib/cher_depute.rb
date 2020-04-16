require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'
def name_list
  page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
  name_arr = []
  email_arr = []
  name = page.xpath('//*[@id="deputes-list"]/div/ul/li/a')
  email = page.xpath('//*[@id="haut-contenu-page"]/article/div/div/dl/dd/ul/li/a')
  name.each do |names|
  name_arr << names.text
  end
  puts name_arr
  return true
end