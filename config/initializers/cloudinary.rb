if Rails.env.development?
  begin
    YAML.load(File.read('config/cloudinary_dev.yml')).each do |key, value|
      ENV[key] = value
    end
  rescue
    raise 'cloudinary_dev.yml file not found'
  end
end