# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body61 Model.
  class Body61 < BaseModel
    # List of valid Shortcode to your Ytel account
    # @return [String]
    attr_accessor :shortcode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['shortcode'] = 'Shortcode'
      @_hash
    end

    def initialize(shortcode = nil)
      @shortcode = shortcode
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      shortcode = hash['Shortcode']

      # Create object from extracted values.
      Body61.new(shortcode)
    end
  end
end
