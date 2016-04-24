module Spoonacular

	BASE_PATH = "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com"

	def self.build_endpoint(method, query)
		return "#{BASE_PATH}#{method}?#{query}"
	end

	def self.get(options)
		headers = {"X-Mashape-Key" => options[:key]}
		headers["Accept"] = "application/json" if options[:accept_json]
		response = Unirest.get options[:uri], headers: headers
		return response
	end

	def self.post(options)
		headers = {"X-Mashape-Key" => options[:key]}
		headers["Accept"] = "application/json" if options[:accept_json]
		headers["Content-Type"] = "application/json" if options[:content_json]
		headers["Content-Type"] = "application/x-www-form-urlencoded" if options[:content_form]
		params = options[:params]
		response = Unirest.post options[:uri], headers: headers, parameters: params
		return response
	end

end