CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      region:                'eu-west-2',                  # optional, defaults to 'us-east-1'
      aws_access_key_id:     'AKIA5JCDRIYG75CWKD4F',                        # required unless using use_iam_profile
      aws_secret_access_key: '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',                        # required unless using use_iam_profile
      use_iam_profile:       false,                         # optional, defaults to false
    }
    config.fog_directory  = 'myyelpdemo'                                      # required
  end