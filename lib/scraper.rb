require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    
   doc = Nokogiri::HTML(open(index_url))
    student = {}
    
    student[:name] = doc.search()
    student[:location] = doc.search()
    student[:profile_url] = doc.search()
    
    student
    
  end


  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(index_url))
    student = {}
    
    student[:name] = doc.search(<h1 class="profile-name">Ryan Johnson</h1>)
    student[:location] = doc.search(<h2 class="profile-location">New York, NY</h2>)
    student[:profile_url] = doc.search()
    
    student
  end

end

 