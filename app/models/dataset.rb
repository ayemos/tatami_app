class Dataset < ApplicationRecord
  self.inheritance_column = :host_type

  enum host_type: {s3: 0, redshift: 1}
end
