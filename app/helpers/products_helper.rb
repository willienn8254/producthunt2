# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  url         :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

module ProductsHelper

	def form_title

		@product.new_record? ? "Publicar producto" : "Modificar Producto"

	end


end
