CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      region:                'eu-west-2',                  # optional, defaults to 'us-east-1'
      aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],     # required unless using use_iam_profile
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], # required unless using use_iam_profile
      use_iam_profile:       false,                        # optional, defaults to false
    }
    config.fog_directory  = 'myyelpdemo'                                      # required
  end