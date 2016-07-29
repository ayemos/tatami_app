class CreateDatasets < ActiveRecord::Migration[5.0]
  def change
    create_table :datasets do |t|
      t.string :name
      t.integer :host_type, default: 0, null: false, limit: 1
      t.string :description

      # S3Dataset
      t.string :bucket_name
      t.string :prefix
      t.integer :data_type, default: 0, null: false, limi: 1

      # RedshiftDataset
      t.string :table_name
      t.string :query

      t.timestamps
    end
    add_index :datasets, :name, unique: true
  end
end
