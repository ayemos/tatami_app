require 'aws-sdk'
require 'aws_util'

module DatasetsHelper
  include AwsUtil

  def image_sample_urls_for_dataset(dataset, num_urls=4)
    method("#{dataset.type.underscore}_image_sample_urls_for_dataset").call(dataset, num_urls)
  end

  private
    def s3_dataset_image_sample_urls_for_dataset(dataset, num_urls)
      resource('s3').bucket(dataset.bucket_name).objects({
        prefix: dataset.prefix
      }).limit(num_urls).select{|o| o.size.to_i > 0}.collect(&:public_url)
    end
end
