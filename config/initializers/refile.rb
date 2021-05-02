require "refile/s3"

if Rails.env.production?
  aws = {
    access_key_id: ENV["AKIAVRZ4TY5AYPKKM4OV"],
    secret_access_key: ENV["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"],
    region: "ap-northeast-1",
    bucket: "photo-rails",
  }
end
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)