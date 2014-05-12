require 'curb'
class ParseBigHops

  def initialize(url)
    #New instance of beer array
    @beers = Array.new
    c = Curl::Easy.perform(url)
    body = c.body_str
    tbody = body.scan(/<tbody>(.*?)<\/tbody>/)
    rows = tbody.to_s.scan(/<tr>(.*?)<\/tr>/)
    rows.each do |row|
       data = row.to_a[0].scan(/<td>(.*?)<\/td>/)
       brewery = data[0][0]
       name = data[1][0]
       style = data[2][0]
       price = data[3][0]
       abv = data[4][0]
       @beers.push Beer.new(brewery, name, style, price, abv)
    end
  end #intialize

  def list
    @beers.each do |beer|
      puts beer.to_s
    end
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
end

thing = ParseBigHops.new("http://bighops.com/taplist-huebner/")
thing.list
