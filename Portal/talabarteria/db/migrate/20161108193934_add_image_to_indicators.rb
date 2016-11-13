class AddImageToIndicators < ActiveRecord::Migration[5.0]
  def change
  	add_attachment  :indicators, :image
  end
end
