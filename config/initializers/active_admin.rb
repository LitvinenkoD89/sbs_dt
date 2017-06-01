ActiveAdmin.setup do |config|
  config.site_title = "Dark Theater"
  config.register_javascript 'ckeditor/init.js'
  config.authentication_method = :authenticate_user!
  config.current_user_method = :current_user
  config.logout_link_path = :destroy_user_session_path
  config.batch_actions = true
  config.localize_format = :long
end
