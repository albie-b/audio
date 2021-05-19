require 'aws/s3'
class Audio
  BUCKET = 'add bucket here'
  def self.all
    AWS::S3::Base.establish_connection!(
        :access_key_id     => 'add key here',
        :secret_access_key => 'add key here'
    )
    AWS::S3::Bucket.find(bucket).objects
  end

end
