class CreatePonts < ActiveRecord::Migration[7.0]
  def change
    create_table :ponts do |t|
      t.string :body

      t.timestamps
    end
  end
end
