class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      # Section 1
      t.boolean :pet
      t.string :pet_type

      # Section 2
      t.boolean :quiet
      t.boolean :noisy

      # Section 3
      t.boolean :clean
      t.boolean :messy
      t.boolean :kind_of_clean

      # Section 4
      t.boolean :party
      t.boolean :drink
      t.boolean :smoke

      # Section 5
      t.boolean :study
      t.string :major

      t.timestamps
    end
  end
end
