module Spoonacular

	class API
		def initialize(key)
			@key ||= key
		end

		# These code snippets use an open-source library.
# response = Unirest.post "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/food/products/classify",
#   headers:{
#     "X-Mashape-Key" => "PHc0EwDwKemshJa23OrOrQZI9aWQp1xteNujsnMD9OKM22A13P",
#     "Content-Type" => "application/json",
#     "Accept" => "application/json"
#   }
#   "{\"title\":\"Kroger Vitamin A & D Reduced Fat 2% Milk\",\"upc\":\"\",\"plu_code\":\"\"}"




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

		def get_product_information(id)
			method = "/food/products/#{id}"
			uri = Spoonacular.build_endpoint(method, "")
			response = Spoonacular.get({key: @key, uri: uri})
			return response.parsed_response
		end

		def get_recipe_information(id)
			method = "/recipes/#{id}/information"
			uri = Spoonacular.build_endpoint(method, "")
			response = Spoonacular.get({key: @key, uri: uri})
			return response.parsed_response
		end


	end

end