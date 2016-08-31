Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'

  resources :datasets, only: [:index, :create, :show]
  resources :s3_datasets, controller: :datasets, type: 'S3Dataset', only: [:new, :show]
  resources :redshift_datasets, controller: :datasets, type: 'RedshiftDataset', only: [:new, :show]
end
