class ChangeDescriptionIndicators < ActiveRecord::Migration[5.0]
  def up
  	change_table :indicators do |t|
  		t.change :description, :text
	  end
	end


  def down
  	change_table :indicators do |t|
  		t.change :description, :string
  	end
  end
end
