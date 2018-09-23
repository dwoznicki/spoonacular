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

	def get_food_information(id, amount, unit)
		method = "/food/ingredients/#{id}/information?amount=#{amount}, unit=#{unit}"
		uri = Spoonacular.build_endpoint(method, "")
		response = Spoonacular.get({key: @key, uri: uri})
	end

end
