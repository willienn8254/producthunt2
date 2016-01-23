# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  url                :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

module ProductsHelper

	def form_title

		@product.new_record? ? "Publicar producto" : "Modificar Producto"

	end


	def header_style
	  if @product.image.exists?
	    %{ style="background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url('#{@product.image.url}'); background-size: cover; background-position: center;" }.html_safe
	  else
	    ""
	  end
	end

end
