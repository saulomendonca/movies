class CreateRoles < ActiveRecord::Migration[7.0]
  def change

    create_enum "role_type", ["casting", "director", "producer"]

    create_table :roles do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.enum :role_type, enum_type: "role_type" , null: false

      t.timestamps
    end
  end
end
