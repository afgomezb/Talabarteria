class AddPhoto2Products < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :products,:photo2
  end
end
