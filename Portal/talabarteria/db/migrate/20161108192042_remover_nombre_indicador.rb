class RemoverNombreIndicador < ActiveRecord::Migration[5.0]
  def up
  	rename_column :indicators, :name, :beneficiary
  end
  def down
  	rename_column :indicators, :beneficiary, :name
  end

end
