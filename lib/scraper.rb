require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
doc = Nokogiri::HTML(html)

courses = 

class Scraper
  
  def get_page 
    html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    doc = Nokogiri::HTML(html)
    binding.pry
  end
  
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



