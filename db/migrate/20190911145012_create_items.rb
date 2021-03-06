class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string      :name,                  null: false, index: true
      t.integer     :price,                 null: false
      t.text        :description,           null: false
      t.integer     :condition,             null: false
      t.integer     :shipping_fee,          null: false
      t.integer     :days_before_shipping,  null: false
      t.integer     :shipping_method,       null: false
      t.integer     :trade_status,          default: 0
      t.references	:user,                  null: false, foreign_key: true
      t.references	:category,              null: false, foreign_key: true
      t.references	:size,                  foreign_key: true
      t.references  :brand,                 foreign_key: true
      t.timestamps
    end
  end
end
