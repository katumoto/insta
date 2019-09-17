class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string     :name,	  null: false, unique: true
      # t.references :parent,	null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
