class AddCoverToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :products,:cover
  end
end