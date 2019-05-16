class CreateFaces < ActiveRecord::Migration[5.2]
  def change
    create_table :faces do |t|
      t.string :baslik
      t.string :ekleyen
      t.text :ozet
      t.text :icerik
      t.integer :begeni

      t.timestamps
    end
  end
end
