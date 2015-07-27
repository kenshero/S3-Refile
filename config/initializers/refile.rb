require "refile/s3"

aws = {
  access_key_id: "xxxx",
  secret_access_key: "xxxx",
  region: "xxxx",
  bucket: "xxxx",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)