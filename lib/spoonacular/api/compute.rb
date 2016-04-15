module Spoonacular

	class API
		def classify_grocery_product(object)
			method = "/food/products/classify"
			uri = Spoonacular.build_endpoint(method, "")
			response = Spoonacular.post({key: @key, json: true, content: true, params: object})
			return response
		end
		# These code snippets use an open-source library.
# response = Unirest.post "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/food/products/classify",
#   headers:{
#     "Content-Type" => "application/json",
#     "Accept" => "application/json"
#   }
#   "{\"title\":\"Dale Bananas\",\"upc\":\"\",\"plu_code\":\"\"}"
	end

end