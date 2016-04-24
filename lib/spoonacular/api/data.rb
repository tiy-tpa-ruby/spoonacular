module Spoonacular

	class API
		def get_product_information(id)
			method = "/food/products/#{id}"
			uri = Spoonacular.build_endpoint(method, "")
			response = Spoonacular.get({key: @key, uri: uri})
			return response
		end

		def get_recipe_information(id)
			method = "/recipes/#{id}/information"
			uri = Spoonacular.build_endpoint(method, "")
			response = Spoonacular.get({key: @key, uri: uri})
			return response
		end
	end
	
end