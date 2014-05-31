require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'json'

class ParseBigHops

  def initialize(url)
    #New instance of beer array
    @beers = Array.new

    page  = Nokogiri::HTML(open(url))
    rows = page.css("tbody").css("tr").to_a
    #Consider using xsl to grab this data itn eh future to prevent the need for code changes if the site is updated.
    rows.each do |row|
       data  = row.xpath("./td/text()").to_a
       #for big hops we shoudl remove the asterisk and then trim whitespace for the brewery.  We can use untapped to get location
       brewery = data[0].to_s
       name = data[1].to_s
       style = data[2].to_s
       price = data[3].to_s
       abv = data[4].to_s
       @beers.push Beer.new(brewery, name, style, price, abv)
    end
  end #intialize

  def list
    @beers.each do |beer|
      puts beer.to_s
    end
  end

  def add
    require 'net/http'
      beerMap = @beers[0].to_map
      puts "beer map"
      puts beerMap
      postData = Net::HTTP.post_form(URI.parse('http://localhost:3000/beers.json'), beerMap)
      puts postData.body
  end
end

class Beer

  def  initialize (brewery, name, style, price, abv)
    @brewery = brewery
    @name= name
    @style = style
    @price = price
    @abv = abv
  end

  def to_s
    return @brewery + " " + @name + " "  + @style + " " + @price + " "  + @abv
  end

  def to_map
    return {:brewery => @brewery, :name => @name, :style => @style, :price => @price, :abv => @abv}
  end
end

thing = ParseBigHops.new("http://bighops.com/taplist-huebner/")
thing.list
thing.add
