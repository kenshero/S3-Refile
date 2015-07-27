require "refile/s3"

aws = {
  access_key_id: "AKIAIABMSUNT5RTAW2GQ",
  secret_access_key: "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",
  region: "ap-southeast-1",
  bucket: "rails-img",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)