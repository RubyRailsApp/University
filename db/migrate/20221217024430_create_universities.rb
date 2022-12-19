class CreateUniversities < ActiveRecord::Migration[7.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :chuyennganh
      t.string :vitri
      t.integer :thoigianhd
      t.integer :soluong
      t.string :nganhdaotao

      t.timestamps
    end
  end
end
