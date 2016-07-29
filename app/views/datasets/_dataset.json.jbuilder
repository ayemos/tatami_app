json.extract! dataset, :id, :name, :created_at, :updated_at, :host_type
json.partial! "datasets/#{@dataset.host_type}_dataset", dataset: @dataset
json.url datasets_url(dataset, format: :json)
