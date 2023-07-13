Kaminari.configure do |config|
  config.default_per_page = 10 # Set the default number of items per page
  config.max_per_page = 100    # Set the maximum number of items per page
  config.window = 4            # Set the number of pages displayed in the pagination window
  config.outer_window = 1      # Set the number of outer window links displayed in the pagination window
  config.left = 0              # Set the number of left window links displayed in the pagination window
  config.right = 0             # Set the number of right window links displayed in the pagination window
  config.param_name = :page    # Set the name of the parameter used for pagination
end
