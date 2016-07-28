class Dataset < ApplicationRecord
  enum host_type: {s3: 0, redshift: 1}
end
