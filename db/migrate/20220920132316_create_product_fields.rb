class CreateProductFields < ActiveRecord::Migration[6.1]
  def change
    create_table :product_fields do |t|
      t.string :field_name
      t.string :field_type
      t.references :user

      t.timestamps
    end
  end
end
