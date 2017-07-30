if Rails.env.production?
  CarrierWave.configure do |config|
    config.roog = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider                  => 'AWS',
      :s3_access_key_id         => ENV['S3_ACESS_KEY'],
      :s3_secret_access_key     => ENV['S3_SECRET_KEY']
      #:region                    -> ENV['S3_REGION']
    }

    config.fog_directory         = ENV['S3_BUCKET']
  end
end
