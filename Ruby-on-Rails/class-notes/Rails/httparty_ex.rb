require 'httparty'
require 'pp'  #pretty print

class Coursera
	include HTTParty

	base_uri 'https://api.coursera.org/api/catalog.v1/courses'
	default_params fields: "smallIcon, shortDescription" , q: "search"
	#fields, q: request parameter
	format :json


	#this one has one method, but it's OK to have multple methods
	def self.for term
		get("", query: {query: term})["elements"]
	end 
end

pp Coursera.for "python"