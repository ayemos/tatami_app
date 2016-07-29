class S3Dataset < Dataset
  enum data_type: { image: 0, binary: 1, archive: 2 }
end
