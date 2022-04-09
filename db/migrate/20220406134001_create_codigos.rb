class CreateCodigos < ActiveRecord::Migration[6.1]
  def change
    create_table :codigos do |t|
      t.string :zip_code
      t.string :locality
      t.string :federal_entity
      t.string :settlements
      t.string :municipality
      t.timestamps
    end
  end
end
