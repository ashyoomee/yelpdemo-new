CarrierWave.configure do |config|
    aws_access_key_id = ENV['AWS_ACCESS_KEY_ID'] || "blank"
    aws_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY'] || "blank"
    config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      region:                'eu-west-2',                  # optional, defaults to 'us-east-1'
      aws_access_key_id:     aws_access_key_id,     # required unless using use_iam_profile
      aws_secret_access_key: aws_secret_access_key, # required unless using use_iam_profile
      use_iam_profile:       false,                        # optional, defaults to false
    }
    config.fog_directory  = 'myyelpdemo'                                      # required
  end