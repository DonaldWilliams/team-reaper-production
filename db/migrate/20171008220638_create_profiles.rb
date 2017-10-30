class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      # Section 1
      t.boolean :pet,           default: false
      t.string :pet_type

      # Section 2
      t.boolean :quiet,         default: false
      t.boolean :noisy,         default: false

      # Section 3
      t.boolean :clean,         default: false
      t.boolean :messy,         default: false
      t.boolean :kind_of_clean, default: false

      # Section 4
      t.boolean :party,         default: false
      t.boolean :drink,         default: false
      t.boolean :smoke,         default: false

      # Section 5
      t.boolean :study,         default: false 
      t.string :major

      t.timestamps
    end
  end
end
