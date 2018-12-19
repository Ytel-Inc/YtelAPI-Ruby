# ytel_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # Body8 Model.
  class Body8 < BaseModel
    # A valid Ytel comma separated numbers (E.164 format).
    # @return [String]
    attr_accessor :phone_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['phone_number'] = 'PhoneNumber'
      @_hash
    end

    def initialize(phone_number = nil)
      @phone_number = phone_number
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      phone_number = hash['PhoneNumber']

      # Create object from extracted values.
      Body8.new(phone_number)
    end
  end
end