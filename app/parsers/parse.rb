require 'curb'
class ParseBigHops

  def intitialze(url)
    c = Curl::Easy.perform(url)
    body = c.body_str
    table = /<table.*<\/table>/.match(body)
    rows = /<tr>.*<\/tr>/.match(table)
    puts rows.class
  end #intialize




end

class Beer
  def  initialize (brewery, name, style, price, abv, texan)
    @brewery = brewery
    @name= name
    @style = style
    @price = price
    @abv = abv
    @texan = texan
  end
end

ParseBigHops("http://bighops.com/taplist-huebner/")
