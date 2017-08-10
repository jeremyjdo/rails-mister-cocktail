class ChangeTableNameCocktail < ActiveRecord::Migration[5.0]
  def change
    rename_table :coktails, :cocktails
  end
end
