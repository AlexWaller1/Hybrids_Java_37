class CreateHybrids < ActiveRecord::Migration[6.1]
  def change
    create_table :hybrids do |t|
      t.string :img_src
      t.string :caption
      t.belongs_to :user

      t.timestamps
    end
  end
end
