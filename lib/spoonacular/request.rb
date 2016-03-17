module Spoonacular

	BASE_PATH = "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com"

	def self.build_endpoint(method, query)
		return "#{BASE_PATH}#{method}?#{query}"
	end

	def self.get(options)
		headers = {"X-Mashape-Key" => options[:key]}
		headers["Accept"] = "application/json" if options[:json]
		response = HTTParty.get options[:uri], headers: headers
		return response
	end

	def self.post(options)
		headers = {"X-Mashape-Key" => options[:key]}
		response = HTTParty.post options[:uri], headers: headers
		return response
	end

end