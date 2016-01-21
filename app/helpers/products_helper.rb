module ProductsHelper

	def form_title

		@product.new_record? ? "Publicar producto" : "Modificar Producto"

	end


end