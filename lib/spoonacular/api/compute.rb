module Spoonacular

  class API
    def match_recipes_to_calories(target_calories, time_frame)
      method = "/recipes/mealplans/generate"
      query = "targetCalories=#{target_calories}&timeFrame=#{time_frame}"
      uri = Spoonacular.build_endpoint(method, query)
      response = Spoonacular.get({key: @key, uri: uri})
      return response
    end

    def summarize_recipe(id)
      method = "/recipes/#{id}/summary"
      uri = Spoonacular.build_endpoint(method, "")
      response = Spoonacular.get({key: @key, uri: uri})
      return response
    end

    def visualize_ingredients(options={})
      method = "/recipes/visualizeIngredients"
      uri = Spoonacular.build_endpoint(method, "")[0..-2]
      params = "#{options.querify}"
      response = Spoonacular.post({key: @key, uri: uri, content_form: true, params: params})
      return response
    end

    def visualize_nutrition(options={})
      method = "/recipes/visualizeNutrition"
      uri = Spoonacular.build_endpoint(method, "")[0..-2]
      params = "#{options.querify}"
      response = Spoonacular.post({key: @key, uri: uri, content_form: true, params: params})
      return response
    end

    def visualize_price_breakdown(options={})
      method = "/recipes/visualizePriceEstimator"
      uri = Spoonacular.build_endpoint(method, "")[0..-2]
      params = "#{options.querify}"
      response = Spoonacular.post({key: @key, uri: uri, content_form: true, params: params})
      return response
    end
  end

end
