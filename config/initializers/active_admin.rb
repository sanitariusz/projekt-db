ActiveAdmin.setup do |config|

  # == Site Title
  config.site_title = "Projekt Bazy Danych"

  # == User Authentication
  config.authentication_method = :authenticate_admin_user!

  # == User Authorization
  # config.authorization_adapter = ActiveAdmin::CanCanAdapter
  # config.cancan_ability_class = "Ability"
  # config.on_unauthorized_access = :access_denied

  # == Current User
  config.current_user_method = :current_admin_user


  # == Logging Out
  config.logout_link_path = :destroy_admin_user_session_path
  #  config.logout_link_path = "/admin/login"
  # config.logout_link_method = :get

  # == Root
  # config.root_to = 'admin/panel#index'


  # == Admin Comments
 config.allow_comments = false
 config.show_comments_in_menu = false
 #  config.comments_registration_name = 'AdminComment'


  # == Batch Actions
  config.batch_actions = true


  # == Controller Filters
  # config.before_filter :do_something_awesome
  
  
  # == Favicon
  # config.favicon = '/assets/favicon.ico'


  # == Register Stylesheets & Javascripts
  #   config.register_stylesheet 'my_stylesheet.css'
  #   config.register_stylesheet 'my_print_stylesheet.css', :media => :print
  #   config.register_javascript 'my_javascript.js'


  # == CSV options
  # config.csv_options = { :col_sep => ';' }
  # config.csv_options = { :force_quotes => true }


  # == Menu System
  #   config.namespace :admin do |admin|
  #     admin.build_menu :utility_navigation do |menu|
  #       menu.add label: "My Great Website", url: "site url", html_options: { target: :blank }
  #       admin.add_logout_button_to_menu menu
  #     end
  #   end
  #
  #   config.namespace :admin do |admin|
  #     admin.build_menu :default do |menu|
  #       menu.add label: "My Great Website", url: "site url", html_options: { target: :blank }
  #     end
  #   end


  # == Download Links
  #   config.namespace :admin do |admin|
  #
  #     # Disable the links entirely
  #     admin.download_links = false
  #
  #     # Only show XML & PDF options
  #     admin.download_links = [:xml, :pdf]
  #
  #     # Enable/disable the links based on block
  #     #   (for example, with cancan)
  #     admin.download_links = proc { can?(:view_download_links) }
  #
  #   end


  # == Pagination#
  # config.default_per_page = 30


  # == Filters
  # config.filters = true

  config.view_factory.footer = Footer

end
