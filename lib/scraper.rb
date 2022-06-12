require 'nokogiri'
require 'open-uri'

class Scraper

    def self.get_character_name
        url = "https://sea.ign.com/feature/169415/the-25-best-marvel-heroes-in-the-mcu"
        html = open(url)
        doc = Nokogiri::HTML(html)
        
         
        names = doc.css('.article-section h2, .article-section h3, .article-section h4, .article-section h5')
        processed_names = names.collect do |name| 
        name.text.strip
            
     
    end
         processed_names
    
    end
     
    
end

