# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Initiate paperclip
Paperclip.options[:command_path] = '/usr/bin/convert'
