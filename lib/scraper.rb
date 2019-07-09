require 'open-uri'
<<<<<<< HEAD
=======
require 'pry'
>>>>>>> 3f8f1cddfce7af130e9b29c83674a5ae333650c5
require "nokogiri"

class Scraper

  def self.scrape_index_page(index_url)
<<<<<<< HEAD
    html = Nokogiri::HTML(open("#{index_url}")) 
       students_hash=[]
      
    html.css(".student-card").collect {|student| 
    hash = {
        name:  student.css("h4.student-name").text,
        location:  student.css("p.student-location").text,
        profile_url: student.css("a").attribute("href").value
    }
     students_hash << hash
    }
  students_hash
  end

  def self.scrape_profile_page(profile_url)
      html = Nokogiri::HTML(open("#{profile_url}")) 
      student_prof_hash = {}
    
 
  html.css("div.social-icon-container a").collect do |student|
     url= student.attribute("href").value
            student_prof_hash[:twitter]= url if student.attribute("href").value.include?("twitter")
            student_prof_hash[:linkedin]= url if student.attribute("href").value.include?("linkedin")
            student_prof_hash[:github] = url if student.attribute("href").value.include?("github")
            student_prof_hash[:blog] = url if student.css("img").attribute("src").text.include?("rss")
=======
    #responsible for scraping the index page that lists all of the students 
    Nokogiri::HTML(open("#{index_url}"))
    
  
  end

  def self.scrape_profile_page(profile_url)
    #esponsible for scraping an individual student's profile page to get further information about that student
>>>>>>> 3f8f1cddfce7af130e9b29c83674a5ae333650c5
  end
            student_prof_hash[:profile_quote] = html.css("div.profile-quote").text
            student_prof_hash[:bio] = html.css("div.bio-content p").text
   
  
  student_prof_hash   
end





end #f

