class AddIsGeneratedFromScriptToHolidays < ActiveRecord::Migration[7.0]
  def change
    add_column :holidays, :is_generated_from_script, :boolean
  end
end
