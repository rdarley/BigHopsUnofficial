require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://bighops.com/taplist-huebner/"))
table = /<table>.*<\/table>/.match(page)
puts table