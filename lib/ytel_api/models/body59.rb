# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body59 Model.
  class Body59 < BaseModel
    # The unique identifier of each keyword
    # @return [String]
    attr_accessor :keywordid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['keywordid'] = 'Keywordid'
      @_hash
    end

    def initialize(keywordid = nil)
      @keywordid = keywordid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      keywordid = hash['Keywordid']

      # Create object from extracted values.
      Body59.new(keywordid)
    end
  end
end
