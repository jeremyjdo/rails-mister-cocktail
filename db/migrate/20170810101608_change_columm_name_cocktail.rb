class ChangeColummNameCocktail < ActiveRecord::Migration[5.0]
  def change
    rename_column :doses, :coktail_id, :cocktail_id
  end
end
