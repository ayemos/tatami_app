module AwsUtil
  RESOURCE_MAP = {
    s3: Aws::S3::Resource,
  }

  CLIENT_MAP = {
    s3: Aws::S3::Client
  }

  def resource(name)
    @resource ||= RESOURCE_MAP[name.to_sym].new
  end

  def client(name)
    @client ||= CLIENT_MAP[name.to_sym].new
  end
end
