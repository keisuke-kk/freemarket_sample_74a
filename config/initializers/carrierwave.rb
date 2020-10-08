require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      region: ENV['AWS_S3_REGION'],
      aws_access_key_id: ENV['AWS_IAM_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_IAM_ACCESS_KEY'],
      # aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      # aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      # region: 'ap-northeast-1'
    }
    config.fog_directory = ENV['AWS_S3_BUCKET']
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
    # CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
    # config.fog_directory  = 'f74a'
    # config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/f74a'
  end
end