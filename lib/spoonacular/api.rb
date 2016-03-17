module Spoonacular

	class API
		def initialize(key)
			@key ||= key
		end

		def find_by_ingredients(ingredients, options={})
			method = "/recipes/findByIngredients"
			query = "ingredients=#{ingredients.querify}&#{options.querify}"
			uri = Spoonacular.build_endpoint(method, query)
			response = Spoonacular.get({key: @key, uri: uri, json: true})
			return response.parsed_response
		end
	end

end