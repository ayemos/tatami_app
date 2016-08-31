json.extract! dataset, :id, :name, :created_at, :updated_at, :type
json.partial! "datasets/#{@dataset.type.underscore}", dataset: @dataset
json.url datasets_url(dataset, format: :json)
