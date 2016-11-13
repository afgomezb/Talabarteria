class AddPhoto1Products < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :products,:photo1
  end
end
