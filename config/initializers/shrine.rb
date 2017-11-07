require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: "thesyaf",
  api_key:    ENV["cloudinary_key"],
  api_secret: ENV["cloudinary_secret"],
)


Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "uploads/cache"),
  store: Shrine::Storage::Cloudinary.new(prefix: "uploads/store"),
}
