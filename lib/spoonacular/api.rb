class Spoonacular
	def initialize(key)
		@key ||= key
		@uri = "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByIngredients"
	end

	def find_by_ingredients(options)
		ingredients = options[:ingredients].join("%2C")
		limit_license = options[:limit_license] || false
		number = options[:number] || 5
		ranking = options[:ranking] || 1
		arg = "ingredients=#{ingredients}&limitLicense=#{limit_license}&number=#{number}&ranking=#{ranking}"
		response = HTTParty.get build_query(arg),
		headers: {
			"X-Mashape-Key" => @key,
			"Accept" => "application/json"
		}
		return response
	end

	private

	def build_query(arg)
		return "#{@uri}?#{arg}"
	end
end

# These code snippets use an open-source library.
# response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByIngredients?ingredients=apples%2Cflour%2Csugar&limitLicense=false&number=5&ranking=1",
#   headers:{
#     "X-Mashape-Key" => "bL25HAnJnTmshesbSJQ5LjSOmJkIp1mJIZdjsnMZ1tzYA0sjW9",
#     "Accept" => "application/json"
#   }