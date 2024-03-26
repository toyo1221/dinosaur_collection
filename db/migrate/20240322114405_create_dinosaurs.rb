class CreateDinosaurs < ActiveRecord::Migration[7.0]
  def change
    create_table :dinosaurs do |t|
      t.string   :name
      t.integer  :eating_id
      t.integer  :era_id
      t.string   :size
      t.string   :weight
      t.text     :explanation
      t.timestamps
    end
  end
end
