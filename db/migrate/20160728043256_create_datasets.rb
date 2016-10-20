class CreateDatasets < ActiveRecord::Migration[5.0]
  def change
    create_table :datasets do |t|
      t.string :type

      t.string :name
      t.string :description

      # S3Dataset
      t.string :bucket_name
      t.string :prefix
      t.integer :data_type, default: 0, null: false, limi: 1

      t.timestamps
    end
    add_index :datasets, :name, unique: true
  end
end
