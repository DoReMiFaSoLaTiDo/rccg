Ckeditor.setup do |config|
  config.assets_languages = ['en', 'fr']
  config.assets_plugins = ['image', 'smiley']
  config.authorize_with :cancan
end
