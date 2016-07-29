require 'aws-sdk'

module DatasetsHelper
  def image_sample_urls_for_dataset(dataset, num_urls=4)
    method("#{dataset.host_type}_image_sample_urls_for_dataset").call(dataset, num_urls)
  end

  private
    def s3_image_sample_urls_for_dataset(dataset, num_urls)
      resource.bucket(dataset.bucket_name).objects({
        prefix: dataset.prefix
      }).limit(num_urls).select{|o| o.size.to_i > 0}.collect(&:public_url)
    end

    def resource
      @resource ||= Aws::S3::Resource.new
    end

    def client
      @client ||= Aws::S3::Client.new
    end
end
