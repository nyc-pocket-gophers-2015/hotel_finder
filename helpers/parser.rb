require 'json'

module Parser

  def self.parser_url(city,state)
      url = "http://api.ean.com/ean-services/rs/hotel/v3/list?cid=55505&minorRev=99&apiKey=cbrzfta369qwyrm9t5b8y8kf&locale=en_US&currencyCode=USD&xml=%3CHotelListRequest%3E%0A%20%20%20%20%3Ccity%3E#{city}%3C%2Fcity%3E%0A%20%20%20%20%3CstateProvinceCode%3E#{state}%3C%2FstateProvinceCode%3E%0A%20%20%20%20%3CnumberOfResults%3E25%3C%2FnumberOfResults%3E%0A%3C%2FHotelListRequest%3E"
      string_result = `curl "#{url}"`
      json_result = JSON.parse(string_result)
      json_result["HotelListResponse"]["HotelList"]["HotelSummary"]
  end

end
