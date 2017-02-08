module Spoonacular

  class API
    def analyze_recipe_search(query)
      method = "/recipes/queries/analyze"
      uri = Spoonacular.build_endpoint(method, query)
      response = Spoonacular.get({key: @key, uri: uri, accept_json: true})
      return response
    end

    def extract_recipe(url)
      method = "/recipes/extract"
      query = "forceExtraction=false&url=#{url}"
      uri = Spoonacular.build_endpoint(method, query)
      response = Spoonacular.get({key: @key, uri: uri})
      return response
    end

    def parse_ingredients(ingredient_list, servings)
      method = "/recipes/parseIngredients"
      uri = Spoonacular.build_endpoint(method, "")[0..-2]
      params = {"ingredientList" => ingredient_list, "servings" => servings}
      response = Spoonacular.post({key: @key, uri: uri, content_form: true, params: params})
      return response
    end
  end

end
