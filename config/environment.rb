require 'open-uri'
require 'net/http'
require 'json'
require 'require_all'
require 'pry'

require 'awesome_print'

require_relative '../lib/modules/dog_breeds.rb'    # Used for namespacing
require_all 'lib'                                  # Requires all files to function

# require_relative '../lib/cli.rb'                 # Reference
# require_relative '../lib/api.rb'                 # Reference
# require_relative '../lib/breed.rb'               # Reference
