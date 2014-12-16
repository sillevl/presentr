class UploadsController < ApplicationController

  def create
    @file = params[:file].tempfile
    s3 = AWS::S3.new
    random = SecureRandom.hex
    image = s3.buckets['my-bucket'].objects.create("#{random}.jpg", @file)

    render(json: image.public_url)
  end
end