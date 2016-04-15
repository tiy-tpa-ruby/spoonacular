module Spoonacular
	
	class API
		def autocomplete_ingredient_search(ingredient)
			method = "/food/ingredients/autocomplete"
			query = "query=#{ingredient}"
			uri = Spoonacular.build_endpoint(method, query)
			response = Spoonacular.get({key: @key, uri: uri})
			return response.parsed_response
		end

		def complex_recipe_search(options={})
			method = "/recipes/searchComplex"
			query = "#{options.querify}"
			uri = Spoonacular.build_endpoint(method, query)
			response = Spoonacular.get({key: @key, uri: uri})
			return response.parsed_response
		end

		def find_by_ingredients(ingredients, options={})
			method = "/recipes/findByIngredients"
			query = "ingredients=#{ingredients.querify}&#{options.querify}"
			uri = Spoonacular.build_endpoint(method, query)
			response = Spoonacular.get({key: @key, uri: uri, json: true})
			return response.parsed_response
		end

		def find_by_nutrients(options={})
			method = "/recipes/findByNutrients"
			query = "#{options.querify}"
			uri = Spoonacular.build_endpoint(method, query)
			response = Spoonacular.get({key: @key, uri: uri})
			return response.parsed_response
		end

		def find_similar_recipes(id)
			method = "/recipes/#{id}/similar"
			uri = Spoonacular.build_endpoint(method, "")
			response = Spoonacular.get({key: @key, uri: uri})
			return response.parsed_response
		end

		def search_grocery_products(options={})
			method = "/food/products/search"
			query = "#{options.querify}"
			uri = Spoonacular.build_endpoint(method, query)
			response = Spoonacular.get({key: @key, uri: uri})
			return response.parsed_response
		end

		def search_recipes(options={})
			method = "/recipes/search"
			query = "#{options.querify}"
			uri = Spoonacular.build_endpoint(method, query)
			response = Spoonacular.get({key: @key, uri: uri})
			return response.parsed_response
		end
	end
	
end