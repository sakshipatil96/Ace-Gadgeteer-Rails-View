class Specification < ApplicationRecord
    def scrap
        url = "https://www.gsmarena.com/oneplus-phones-95.php"
        unparsed = HTTParty.get(url)
        parsed = Nokogiri::HTML(unparsed.body)
        a = parsed.css('div.makers')
        a.css('ul').each do |li|
            li.css('span').each do |phone|
              b = phone.text
              if Specification.where(phone_name: b).blank?
                c = Specification.new(phone_name: b)
                c.save
              end
            end
        end  
    end
end